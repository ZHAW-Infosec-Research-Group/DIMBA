package ch.zhaw.securitylab.inbank.server.controllers;

import ch.zhaw.securitylab.inbank.server.user.User;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import io.javalin.http.Context;

import java.io.UnsupportedEncodingException;

import static ch.zhaw.securitylab.inbank.server.util.UtilJavalin.getHeaderJwt;




public class ControllerParent {
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final String ISSUER = "InBank";
	private static final String PASSWORD = "Security15";
	
	// -------------------------------------------- //
	// VARIOUS
	// -------------------------------------------- //
	
	protected static User getUser(Context context) throws NullPointerException {

		String jwtString = getHeaderJwt(context);

		if (jwtString == null || jwtString.isEmpty()) throw new NullPointerException("jwt");
		
		DecodedJWT jwt = verifyToken(jwtString);
		if (jwt == null) throw new NullPointerException("jwt token");
		
		// Check if claim has user
		Claim userClaim = jwt.getClaim("user");
		if (userClaim.isNull()) throw new NullPointerException("jwt.user");
		
		// Search User from email in claim
		String email = userClaim.asString();
		return ControllerUser.get().getUser(email);
	}
	
	protected static boolean isNull(Object... objects) {
		for (Object object : objects) {
			if (object == null) return true;
			if (object instanceof String && ((String) object).isEmpty()) return true;
		}
		return false;
	}
	
	public static String getJsonWebToken(String email) {
		try {
			// TODO: Configure the jwt correctly
			Algorithm algorithm = Algorithm.HMAC256(PASSWORD);
			return JWT.create().withIssuer(ISSUER).withClaim("user", email).sign(algorithm);
		}
		catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static DecodedJWT verifyToken(String token) {
		try {
			Algorithm algorithm = Algorithm.HMAC256(PASSWORD);
			JWTVerifier verifier = JWT.require(algorithm).withIssuer(ISSUER).build(); //Reusable verifier instance
			return verifier.verify(token);

		}  catch (JWTVerificationException exception){
			// Invalid signature/claims
		} catch (UnsupportedEncodingException exception){
			// UTF-8 encoding not supported
		}
		return null;
	}
}
