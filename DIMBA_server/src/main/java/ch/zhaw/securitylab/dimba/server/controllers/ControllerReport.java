package ch.zhaw.securitylab.dimba.server.controllers;

import ch.zhaw.securitylab.dimba.server.responses.StringResponse;
import ch.zhaw.securitylab.dimba.server.Server;
import ch.zhaw.securitylab.dimba.server.user.User;
import io.javalin.http.Handler;

public class ControllerReport extends ControllerParent {

	public static Handler handleKey = context -> {
		Server.logger.info("Key started");
		
		User user = getUser(context);
		
		StringResponse sRes = new StringResponse(user.getKey());
		context.json(sRes);
		context.status(200);
		
		Server.logger.info("Key success");
	};
	
	public static Handler handleReport = context -> {
		Server.logger.info("Report started");
		
		User user = getUser(context);

		StringResponse sRes = new StringResponse("Generate report for " + user.getEmail());
		context.json(sRes);
		context.status(200);
		
		Server.logger.info("Report success");
	};
}
