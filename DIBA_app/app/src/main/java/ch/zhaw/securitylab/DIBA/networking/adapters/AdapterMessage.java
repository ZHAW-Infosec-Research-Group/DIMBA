package ch.zhaw.securitylab.DIBA.networking.adapters;

import ch.zhaw.securitylab.DIBA.data.messages.Message;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

import java.lang.reflect.Type;
import java.util.Date;

public class AdapterMessage implements JsonSerializer<Message>, JsonDeserializer<Message>
{
	
	@Override
	public Message deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException
	{
		if (!json.isJsonObject()) throw new RuntimeException("Not Json Object.");
		
		JsonObject jsonObject = json.getAsJsonObject();
		
		// Primitives
		String message = jsonObject.get("message").getAsString();
		Long date = jsonObject.get("creationTime").getAsLong();
		int viewType = jsonObject.get("viewType").getAsInt();
		
		// Convert to
		Date creationTime = new Date(date);
		
		// Return the investment
		return new Message(message, viewType, creationTime);
	}
	
	@Override
	public JsonElement serialize(Message src, Type typeOfSrc, JsonSerializationContext context)
	{
		return null;
	}
}
