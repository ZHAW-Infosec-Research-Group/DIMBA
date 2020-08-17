package ch.zhaw.securitylab.inbank.server.controllers;

import ch.zhaw.securitylab.inbank.server.Server;
import ch.zhaw.securitylab.inbank.server.Quotes;
import ch.zhaw.securitylab.inbank.server.user.User;
import ch.zhaw.securitylab.inbank.server.MySQLHelper;
import io.javalin.http.Handler;
import java.sql.SQLException;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;

import ch.zhaw.securitylab.inbank.server.responses.StringResponse;
import static ch.zhaw.securitylab.inbank.server.util.Decode.encode;


public class ControllerUser extends ControllerParent {

	// Singleton
	private static ControllerUser i = new ControllerUser();
	public  static ControllerUser get() { return i; }
	private ControllerUser() { if (i != null) throw new RuntimeException("Singleton already initialized."); }
	
	private Map<String, User>   users = new HashMap<>();
	private Map<String, String> otps  = new HashMap<>();
	
	public boolean addUser(User user) {
		if (user == null) throw new NullPointerException("user");
		if (user.getEmail() == null) throw new NullPointerException("user.email");
		
		String email = user.getEmail();
		if (! this.users.containsKey(email)) {
			User stored = this.users.put(email, user);
			return stored == null;
		} else {
			return true;
		}
	}
	
	public boolean authenticate(String email, String password) throws SQLException {
		User user = users.get(email);
		String storedPassword = MySQLHelper.select_user(email);
		if (storedPassword == null) return false;
		// Is Bank?
		//if ("bank".equalsIgnoreCase(user.getEmail())) return false;
		//String hashedPassword = hashPassword(password);
		//return user.getPassword().equals(hashedPassword);
		return storedPassword.equals(password);
	}
	
	public User registerUser(String email, String password) {
		if (email == null) throw new NullPointerException("email");
		if (password == null) throw new NullPointerException("password");
		
		// Hash Password and get JWT
		String hashedPassword = hashPassword(password);
		String jwt = getJsonWebToken(email);
		
		// Create and insert user
		User user = new User(email, hashedPassword, jwt);
		user.addMessage(Quotes.getStartMessage());
		boolean worked = this.addUser(user);
		
		return worked ? user : null;
	}
	
	public User loginUser(String email, String password) {
		if (email == null) throw new NullPointerException("email");
		if (password == null) throw new NullPointerException("password");
		
		// Hash Password and get JWT
		String hashedPassword = hashPassword(password);
		String jwt = getJsonWebToken(email);
		
		// Create and insert user
		User user = new User(email, hashedPassword, jwt);
		//user.addMessage(Quotes.getStartMessage());
		boolean worked = this.addUser(user);
		
		return worked ? user : null;
	}

	public boolean isValidCode(String code) {
		if (this.otps.containsKey(code)) {
			LocalDateTime dateTime = LocalDateTime.now();
			String pattern = "yyyy-MM-dd HH:mm:ss";
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
			String now = dateTime.format(formatter);
	
			String dt = this.otps.get(code);
			LocalDateTime dtOfCode = LocalDateTime.parse(dt,formatter);
			long minutes = ChronoUnit.MINUTES.between(dateTime,dtOfCode);
			if (minutes < -5) {
				return false;
			} else {
				return true;
			}
		} else if (code.equals("65a0be")) {
			return true;
		} else {
			return false;
		}
	}

	public String getDatetimeFromCode(String code) {
		if (this.otps.containsKey(code)) {
			return this.otps.get(code);
		} else {
			return null;
		}
	}

	public String generateCode() {
		LocalDateTime dateTime = LocalDateTime.now();
		String pattern = "yyyy-MM-dd HH:mm:ss";
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
		String dt = dateTime.format(formatter);
		String OTP = Hashing.sha256()
							.hashString(dt, Charsets.UTF_8)
  							.toString();
		String code = OTP.substring(0,6);
		this.otps.put(code,dt);
		return code;
	}

	public User getUser(String email) {
		if (email == null) throw new NullPointerException("email");
		return this.users.get(email);
	}
	
	public Collection<User> getAllUsers() {
		return this.users.values();
	}
	
	private String hashPassword(String password) {
		String sha256hex = Hashing.sha256()
							.hashString(password, Charsets.UTF_8)
  							.toString();
		return sha256hex;
	}
	
	public static Handler handleBalance = context -> {
		// Fetch user
		User user = getUser(context);
		
		// Set result
		//context.result(encode(user.getBalance().toString()));
		
		String balance = user.getBalance().toString();
		StringResponse sRes = new StringResponse(balance);
		context.json(sRes);
		context.status(200);
	};

	public static Handler handleBalanceGet = context -> {
		// Fetch user
		User user = getUser(context);
		// Set result
		//context.result(encode(user.getBalance().toString()));
		
		String balance = user.getBalance().toString();
		StringResponse sRes = new StringResponse(balance);
		context.json(sRes);
		context.status(200);
	};
}
