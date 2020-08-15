package ch.zhaw.securitylab.DIBA.networking;

import ch.zhaw.securitylab.DIBA.data.invest.Investment;
import ch.zhaw.securitylab.DIBA.data.messages.Message;
import ch.zhaw.securitylab.DIBA.helpers.Decode;
import ch.zhaw.securitylab.DIBA.networking.adapters.AdapterInvestment;
import ch.zhaw.securitylab.DIBA.networking.adapters.AdapterMessage;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.lang.reflect.Type;

/**
 * A Response object which holds the message and statuscode of the http response.
 */
public class InResponse {

	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final Gson GSON;
	
	static {
		GSON = new GsonBuilder()
				   .registerTypeAdapter(Investment.class, new AdapterInvestment())
				   .registerTypeAdapter(Message.class, new AdapterMessage())
				   .create();
	}
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private final String message;
	public String getMessage() { return this.message; }
	
	private final int statusCode;
	public int getStatusCode() { return this.statusCode; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public InResponse(String message, int statusCode) {
		this.message = message;
		this.statusCode = statusCode;
	}
	
	// -------------------------------------------- //
	// CONVENIENCE
	// -------------------------------------------- //
	
	public String getDecodedMessage() { return message == null ? null : Decode.decode(message); }
	
	public <T> T decodeJson(Type typeToken)
	{
		return GSON.fromJson(this.getDecodedMessage(), typeToken);
	}
	
}
