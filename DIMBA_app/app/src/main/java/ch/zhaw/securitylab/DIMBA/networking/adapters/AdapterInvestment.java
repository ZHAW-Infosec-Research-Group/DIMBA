package ch.zhaw.securitylab.DIMBA.networking.adapters;

import ch.zhaw.securitylab.DIMBA.data.invest.Investment;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;

import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Date;

public class AdapterInvestment implements JsonDeserializer<Investment>
{
	@Override
	public Investment deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException
	{
		if (!json.isJsonObject()) throw new RuntimeException("Not Json Object.");
		
		JsonObject jsonObject = json.getAsJsonObject();
		
		// Primitives
		String owner = jsonObject.get("owner").getAsString();
		long date = jsonObject.get("date").getAsLong();
		String amount = jsonObject.get("amount").getAsString();
		String amountSFr = jsonObject.get("amountSFr").getAsString();
		String currency = jsonObject.get("currency").getAsString();
		
		// Convert to
		Date creationDate = new Date(date);
		BigDecimal amountDecimal = new BigDecimal(amount);
		BigDecimal amountSFrDecimal = new BigDecimal(amountSFr);
		
		// Return the investment
		return new Investment(owner, creationDate, amountDecimal, amountSFrDecimal, currency);
	}
	
}
