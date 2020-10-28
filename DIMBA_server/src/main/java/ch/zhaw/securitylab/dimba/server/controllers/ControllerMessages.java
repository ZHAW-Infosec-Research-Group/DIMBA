package ch.zhaw.securitylab.dimba.server.controllers;

import ch.zhaw.securitylab.dimba.server.Quotes;
import ch.zhaw.securitylab.dimba.server.user.Message;
import ch.zhaw.securitylab.dimba.server.user.User;
import ch.zhaw.securitylab.dimba.server.util.UtilGson;
import io.javalin.http.Context;
import io.javalin.http.Handler;

import java.util.List;

import static ch.zhaw.securitylab.dimba.server.util.Decode.encode;
import static ch.zhaw.securitylab.dimba.server.util.Decode.fetch;
import static ch.zhaw.securitylab.dimba.server.util.Decode.fetchJSON;
import ch.zhaw.securitylab.dimba.server.responses.StringResponse;
import ch.zhaw.securitylab.dimba.server.responses.MessageResponse;

public class ControllerMessages extends ControllerParent {

	public static Handler handleMessages = context -> {

		User user = getUser(context);
		
		// Fetch investment fields
		String messageText    = fetchJSON(context, "message");
		String dateString     = fetchJSON(context, "date");
		String viewTypeString = fetchJSON(context, "viewType");

		if (isNull(messageText, dateString, viewTypeString)) {
			//context.result("Param null");
			StringResponse sRes = new StringResponse("Request format wrong!");
			context.json(sRes);
			context.status(400);
			return;
		}
		
		// Add new message
		long date       = Long.parseLong(dateString);
		int viewType    = Integer.parseInt(viewTypeString);
		Message message = new Message(messageText, viewType, date);
		user.addMessage(message);
		
		// Return and answer if special
		if (treatSpecialMessage(user, message)) {
			sendMessages(user, context);
		} else {
			StringResponse sRes = new StringResponse("message added");
			context.json(sRes);
			context.status(200);
		}
	};
	
	public static Handler handleMessagesList = context -> {
		User user = getUser(context);
		user.addMessage(Quotes.getRandomQuote());
		
		sendMessages(user, context);
	};
	
	private static boolean treatSpecialMessage(User user, Message message) {
		Message answer = null;
		String messageText = message.getMessage();
		
		if ("hint".equalsIgnoreCase(messageText)) {
			answer = Quotes.getRandomHint();
		} else if ("42".equals(messageText)) {
			answer = Quotes.getAnswer42(user.getEmail());
		}
		
		boolean wasSpecial = answer != null;
		if (wasSpecial) user.addMessage(answer);
		return wasSpecial;
	}
	
	private static void sendMessages(User user, Context context) {
		// Convert to json
		List<Message> messages = user.getMessages();
		String json = UtilGson.get().gson().toJson(messages);
		
		// Set result
		//context.result(encode(json));
		MessageResponse mRes = new MessageResponse(messages);
		context.json(mRes);
		context.status(200);
	}
}
