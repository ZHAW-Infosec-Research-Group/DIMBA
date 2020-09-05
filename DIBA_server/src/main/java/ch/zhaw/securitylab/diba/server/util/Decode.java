package ch.zhaw.securitylab.diba.server.util;

import io.javalin.http.Context;
import org.json.JSONObject;
import org.json.JSONException;

import java.net.URLDecoder;
import java.net.URLEncoder;
import ch.zhaw.securitylab.diba.server.Server;


public class Decode {

	public static String encode(String string) {

		if (string == null) return null;
		
		try {
			return URLEncoder.encode(string, "UTF-8");

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public static String decode(String string) {

		if (string == null) return null;
		
		try {
			return URLDecoder.decode(string, "UTF-8");

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * Fetch gets a form param from the context and automatically decodes it if present.
	 *
	 * @param context the request context
	 * @param formParam the name of the form param you want to fetch
	 * @return a decoded param or null, if it was not present
	 */
	public static String fetch(Context context, String formParam) {
		String param = context.formParam(formParam, "");
		return param.equals("") ? null : decode(param);
	}

	public static String fetchJSON(Context context, String formParam) {
		JSONObject json = null;
		try {
			json = new JSONObject(context.body());
		} catch (JSONException err){
		    // 
		}
		String value = json.getString(formParam);
		return decode(value);
	}
}
