package ch.zhaw.securitylab.dimba.server.controllers;

import ch.zhaw.securitylab.dimba.server.Server;
import ch.zhaw.securitylab.dimba.server.user.User;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import io.javalin.http.Context;
import io.javalin.http.Handler;
import java.sql.SQLException;

import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;

import ch.zhaw.securitylab.dimba.server.responses.StringResponse;
import static ch.zhaw.securitylab.dimba.server.util.UtilJavalin.getQueryEmail;
import static ch.zhaw.securitylab.dimba.server.util.UtilJavalin.getHeaderJwt;
import static ch.zhaw.securitylab.dimba.server.util.UtilJavalin.getQueryLoginRedirect;
import static ch.zhaw.securitylab.dimba.server.util.UtilJavalin.getQueryPassword;
import static ch.zhaw.securitylab.dimba.server.util.Decode.fetchJSON;

import java.lang.Process;
import java.lang.Runtime;
import java.io.IOException;


public class ControllerLogin extends ControllerParent {

	public static Handler handleLoginPost = context -> {

		Server.logger.info("Login started");
		
		ControllerUser controller = ControllerUser.get();
		
		// Try it trough jwt and credentials
		boolean loginJwt         = loginWithJWT(context, controller);
		boolean loginCredentials = loginCredentials(context, controller);
		if (!loginJwt && !loginCredentials) return;
		
		// Redirect if login successful
		String contentRedirect = getQueryLoginRedirect(context);
		if (contentRedirect != null) context.redirect(contentRedirect);
	};
	
	private static boolean loginWithJWT(Context context, ControllerUser controller) {
		// Check Parameter
		String jwtString = getHeaderJwt(context);
		if (isNull(jwtString)) return false;
		
		DecodedJWT jwt = verifyToken(jwtString);
		if (jwt == null) {
			Server.logger.info("Login failed");
			
			//context.result("login failed");
			StringResponse sRes = new StringResponse("login failed");

			context.json(sRes);
			context.status(401);
			return false;

		} else {
			// Check if claim has user
			Claim userClaim = jwt.getClaim("user");
			if (userClaim.isNull()) return false;
			
			// Search User from email in claim
			String email = userClaim.asString();
			Server.logger.info("Login good");

			//context.attribute("user", email);
			StringResponse sRes = new StringResponse(jwtString);

			context.json(sRes);
			context.status(200);
			return true;
		}
	}
	
	private static boolean loginCredentials(Context context, ControllerUser controller) throws SQLException {

		// Check Parameters
		String email    = getQueryEmail(context);
		String password = getQueryPassword(context);

		if (isNull(email, password)) return false;
		
		String sha256hex = Hashing.sha256()
							.hashString(password, Charsets.UTF_8)
  							.toString();

		// Authenticate potential user
		if (!controller.authenticate(email, sha256hex)) {
			Server.logger.info("Login failed");
			StringResponse sRes = new StringResponse("login failed");
			context.json(sRes);
			context.status(401);
			return false;

		} else {
			User user = ControllerUser.get().loginUser(email, password);
			Server.logger.info("Login good");
			String token = getJsonWebToken(email);
			StringResponse sRes = new StringResponse(token);
			context.json(sRes);
			context.status(200);
			return true;
		}
	}

	public static Handler handle2FA = context -> {

		String owner        = fetchJSON(context, "owner");
		String target       = fetchJSON(context, "target");
		String amountString = fetchJSON(context, "amount");
		String currency     = fetchJSON(context, "currency");

		// Send sms to emulator
		try {
			String code = ControllerUser.get().generateCode();
			String dt   = ControllerUser.get().getDatetimeFromCode(code);
			Server.logger.info("************************************************************");
			Server.logger.info("*");
			Server.logger.info("* SMS sent to user:  "+owner);
			Server.logger.info("* Payment date:      "+dt);
			Server.logger.info("* Payment amount:    "+amountString);
			Server.logger.info("* Payment recipient: "+target);
			Server.logger.info("* Confirmation code: "+code);
			Server.logger.info("*");
			Server.logger.info("************************************************************");

			String message = "Payment date:      "+dt+"\n" +
							 "Payment amount:    "+amountString+"\n" +
							 "Payment recipient: "+target+"\n" +
							 "Confirmation code: "+code;

			Process process = Runtime.getRuntime().exec("adb emu sms send 0041793332211 "+message);
			StringResponse sRes = new StringResponse("OTP sent");
			context.json(sRes);
			context.status(200);
		} catch(IOException e) {
			e.printStackTrace();
		}
	};
}
