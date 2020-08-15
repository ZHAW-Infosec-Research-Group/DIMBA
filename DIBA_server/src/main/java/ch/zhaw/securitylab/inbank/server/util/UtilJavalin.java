package ch.zhaw.securitylab.inbank.server.util;

import io.javalin.http.Context;

import static ch.zhaw.securitylab.inbank.server.util.Decode.fetch;
import static ch.zhaw.securitylab.inbank.server.util.Decode.fetchJSON;

public class UtilJavalin {

	public static String getQueryEmail(Context context) {
		return fetchJSON(context, "email");
	}
	
	public static String getQueryPassword(Context context) {
		return fetchJSON(context, "password");
	}
	
	public static String getHeaderJwt(Context context) {
		if (context.header("Authorization") != null ) {
			return context.header("Authorization").split(" ")[1];
		} else {
			return null;
		}
	}

	public static String getQueryLoginRedirect(Context context) {
		return fetch(context, "loginRedirect");
	}
}
