package ch.zhaw.securitylab.diba.server;

import ch.zhaw.securitylab.diba.server.Server;
import ch.zhaw.securitylab.diba.server.user.Payment;
import ch.zhaw.securitylab.diba.server.user.Investment;
import ch.zhaw.securitylab.diba.server.user.User;
import ch.zhaw.securitylab.diba.server.user.Comment;

import java.util.ArrayList;
import java.math.BigDecimal;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;


public class MySQLHelper {

	private static String databaseName = "dibaDB";
	private static String url = "jdbc:hsqldb:hsql://localhost/xdb";

	private static String location = "./db/dibaDB";

	public static void getDatabaseConnection() throws SQLException {

		org.hsqldb.Server sonicServer;
	    org.hsqldb.persist.HsqlProperties props = new org.hsqldb.persist.HsqlProperties();
	    props.setProperty("server.database.0", "file:" + location + ";");
	    props.setProperty("server.dbname.0", "xdb");
	    sonicServer = new org.hsqldb.Server();
	    try {
	        sonicServer.setProperties(props);
	    } catch (Exception e) {
	        return;
	    }
	    sonicServer.start();

		try {
			Class.forName("org.hsqldb.jdbcDriver");
			Connection con = DriverManager.getConnection(url, "SA", "");
			con.createStatement().executeUpdate("CREATE TABLE IF NOT EXISTS Comment    (comment varchar(255), date varchar(10), score varchar(1))");
			con.createStatement().executeUpdate("CREATE TABLE IF NOT EXISTS Investment (owner varchar(50), date int, amount varchar(50), currency varchar(10), amountSFr varchar(50))");
			con.createStatement().executeUpdate("CREATE TABLE IF NOT EXISTS Payment    (owner varchar(50), target varchar(50), amount int, currency varchar(10), amountSFr int)");
			con.createStatement().executeUpdate("CREATE TABLE IF NOT EXISTS Message    (owner varchar(50), date int, viewType int, message varchar(255))");
			con.createStatement().executeUpdate("CREATE TABLE IF NOT EXISTS User       (email varchar(50), password varchar(100))");
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
	}


	////////////////////////////////////////////////////////////////////
	/////////////          COMMENTS       //////////////////////////////
	////////////////////////////////////////////////////////////////////
	public static void add_comment(String comment, String date, String score) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("INSERT INTO Comment (comment,date,score) VALUES (?,?,?)");
            pst.clearParameters();
            pst.setString(1, comment);
            pst.setString(2, date);
            pst.setString(3, score);
            int i = pst.executeUpdate();
			Server.logger.info("Comment inserted, "+comment);
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
	}
	
	public static ArrayList<Comment> get_comments() throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM Comment");
            pst.clearParameters();
			ResultSet rs = pst.executeQuery();
			ArrayList<Comment> comments = new ArrayList();
			while ( rs.next() ) {
    		  Server.logger.info( rs.getString("comment") );
			  String c = rs.getString("comment");
			  String d = rs.getString("date");
			  String s = rs.getString("score");
			  comments.add(new Comment(c,d,s));
    		}
    		rs.close();
    		pst.close();
			Server.logger.info("Records read, View Comments");
			return comments;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
			return null;
        }
	}

	////////////////////////////////////////////////////////////////////
	/////////////          PAYMENTS       //////////////////////////////
	////////////////////////////////////////////////////////////////////
	public static void add_payment(Payment p) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("INSERT INTO Payment (owner,target,amount,currency,amountSFr) VALUES (?,?,?,?,?)");
            pst.clearParameters();
            pst.setString(1, p.getOwner());
            pst.setString(2, p.getTarget());
            pst.setInt(3,    p.getAmount().intValue());
            pst.setString(4, p.getCurrency());
            pst.setInt(5,    p.getAmountSFr().intValue());
            int rc = pst.executeUpdate();
			Server.logger.info("Payment inserted, "+p.toString());
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
	}

	public static ArrayList<Payment> get_payments(String user) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("SELECT owner,target,amount,currency,amountSFr FROM Payment WHERE owner LIKE ?");
            pst.clearParameters();
            pst.setString(1, user);
			ResultSet rs = pst.executeQuery();
			ArrayList<Payment> payments = new ArrayList();
			while ( rs.next() ) {
    		  Server.logger.info( rs.getString("owner") );
			  Payment p = new Payment(
					  rs.getString("owner"),
					  rs.getString("target"),
                      BigDecimal.valueOf(rs.getInt("amount")),
			          BigDecimal.valueOf(rs.getInt("amountSFr")),
			          rs.getString("currency"));
			  
			  payments.add(p);
    		}
    		rs.close();
    		pst.close();
			Server.logger.info("Payments read");
			return payments;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
			return null;
        }
	}

	////////////////////////////////////////////////////////////////////
	/////////////          INVESTMENTS    //////////////////////////////
	////////////////////////////////////////////////////////////////////
	public static void add_investment(Investment i) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("INSERT INTO Investment (owner,date,amount,currency,amountSFr) VALUES (?,?,?,?,?)");
            pst.clearParameters();
            pst.setString(1, i.getOwner());
            pst.setInt(2,    (int) i.getDate());
            pst.setString(3, i.getAmount());
            pst.setString(4, i.getCurrency());
            pst.setString(5, i.getAmountSFr());
            int rc = pst.executeUpdate();
			Server.logger.info("Investment inserted, "+i.toString());
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
	}

	public static ArrayList<Investment> get_investments(String user) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("SELECT owner,date,amount,currency,amountSFr FROM Investment WHERE owner LIKE ?");
            pst.clearParameters();
            pst.setString(1, user);
			ResultSet rs = pst.executeQuery();
			ArrayList<Investment> investments = new ArrayList();
			while ( rs.next() ) {
    		  Server.logger.info( rs.getString("owner") );
			  Investment i = new Investment(
					  rs.getString("owner"),
					  rs.getInt("date"),
                      rs.getString("amount"),
			          rs.getString("amountSFr"),
			          rs.getString("currency"));
			  
			  investments.add(i);
    		}
    		rs.close();
    		pst.close();
			Server.logger.info("Investments read");
			return investments;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
			return null;
        }
	}

	////////////////////////////////////////////////////////////////////
	/////////////          USER           //////////////////////////////
	////////////////////////////////////////////////////////////////////
	public static void add_user(User user) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("INSERT INTO User (email, password) VALUES (?,?)");
            pst.clearParameters();
            pst.setString(1, user.getEmail());
            pst.setString(2, user.getPassword());
            int i = pst.executeUpdate();
			Server.logger.info("User inserted, "+user.toString());
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
	
	}
	
	public static String select_user(String email) throws SQLException {
		Connection con = DriverManager.getConnection(url, "SA", "");
		try {
            PreparedStatement pst = con.prepareStatement("SELECT password FROM User where email LIKE ?");
            pst.clearParameters();
            pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			String password = null;
			while ( rs.next() ) {
				password = rs.getString("password");
    		}
    		rs.close();
    		pst.close();
			return password;	
        } catch (SQLException e) {
            e.printStackTrace(System.out);
			return null;
        }
	
	}
}
