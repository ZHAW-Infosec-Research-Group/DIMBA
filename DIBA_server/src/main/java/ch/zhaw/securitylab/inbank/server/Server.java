package ch.zhaw.securitylab.inbank.server;

import ch.zhaw.securitylab.inbank.server.controllers.ControllerRegister;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerInvestment;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerSurvey;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerLogin;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerMessages;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerPayment;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerReport;
import ch.zhaw.securitylab.inbank.server.controllers.ControllerUser;
import ch.zhaw.securitylab.inbank.server.user.Investment;
import ch.zhaw.securitylab.inbank.server.user.User;
import io.javalin.Javalin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.math.BigDecimal;
import java.util.Timer;
import java.util.TimerTask;
import java.sql.SQLException;

import static io.javalin.apibuilder.ApiBuilder.after;
import static io.javalin.apibuilder.ApiBuilder.get;
import static io.javalin.apibuilder.ApiBuilder.post;


public class Server {
	public static Logger logger;
	public static void main(String[] args) {

		logger = LoggerFactory.getLogger(Server.class);

		// Start DB
		try {
			MySQLHelper.getDatabaseConnection();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		Javalin app = Javalin.create(config -> {
            config.server(SecureServerFactory::makeSecure);
            //config.addStaticFiles("./public");
        }).start();

		// Add SSL context and HTTP configurations
		//SecureServerFactory.makeSecure(app);
		
		//app.start();
		app.routes(() -> {
			//post(Path.BALANCE,         ControllerUser.handleBalance);
			get("/test",         ctx -> ctx.json("Hello World!"));
			get("/survey",       ControllerSurvey.handleSurveyGet);
			post("/comment",     ControllerSurvey.handleSurveyGetAction);
			get("/balance",      ControllerUser.handleBalanceGet);
			post("/login",       ControllerLogin.handleLoginPost);
			post("/register",    ControllerRegister.handleUserRegistration);
			get("/payments",     ControllerPayment.handlePaymentList);
			post("/payments",    ControllerPayment.handlePayment);
			post("/2FAtoken",    ControllerLogin.handle2FA);
			get("/investments",  ControllerInvestment.handleInvestmentList);
			post("/investments", ControllerInvestment.handleInvestment);
			get("/messages",     ControllerMessages.handleMessagesList);
			post("/messages",    ControllerMessages.handleMessages);
			get("/key",          ControllerReport.handleKey);
			post("/report",      ControllerReport.handleReport);
			after(context -> {
				logger.info(context.path());
				logger.info("Status: " + context.status());
				logger.info("Method: " + context.method());
				logger.info("Req     " + context.body());
				logger.info("Res     " + context.resultString());
				logger.info("Attrs:  " + context.attributeMap().toString());
				logger.info("Params: " + context.formParamMap().toString());
				logger.info("Query:  " + context.queryParamMap().toString());
				logger.info("Header: " + context.headerMap().toString());
				logger.info("");
			});
		});
		
		app.get("/hello", ctx -> ctx.result("Hello World"));
		
		User bank = ControllerUser.get().registerUser("bank", "WhatWasTheQuestionAgain?");
		ControllerUser.get().registerUser("h@cker", "inBank");
		bank.setBalance(new BigDecimal("10000000000"));
		
		Timer timer = new Timer();
		long minute = 60L * 1000L;
		timer.scheduleAtFixedRate(new TimerTask() {
			@Override
			public void run() {
				BigDecimal rate = new BigDecimal("0.15");
				for (User user : ControllerUser.get().getAllUsers()) {
					user.addBalance(new BigDecimal("5.0"));
					for (Investment investment : user.getInvestments()) {
						BigDecimal amount = new BigDecimal(investment.getAmount());
						user.addBalance(amount.multiply(rate));
					}
				}
			}
		}, minute, minute);
	}

	private static void log(String revivedRequest) {
		logger.info(revivedRequest);
	}
}
