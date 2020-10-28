package ch.zhaw.securitylab.dimba.server.controllers;

import ch.zhaw.securitylab.dimba.server.Quotes;
import ch.zhaw.securitylab.dimba.server.Server;
import ch.zhaw.securitylab.dimba.server.MySQLHelper;
import ch.zhaw.securitylab.dimba.server.user.User;
import ch.zhaw.securitylab.dimba.server.responses.StringResponse;
import io.javalin.http.Handler;

import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;

import static ch.zhaw.securitylab.dimba.server.util.UtilJavalin.getQueryEmail;
import static ch.zhaw.securitylab.dimba.server.util.UtilJavalin.getQueryPassword;

public class ControllerRegister extends ControllerParent {

	public static Handler handleUserRegistration = context -> {

		Server.logger.info("User creation started");

		String email     = getQueryEmail(context);
		String password  = getQueryPassword(context);

		User user = ControllerUser.get().registerUser(email, password);
		if (user == null || MySQLHelper.select_user(email) != null) {
			context.result("User not creatable");
			context.status(500);
			return;
		}
		Server.logger.info("User created: " + user.toString());

		String token = user.getJsonWebToken();
		MySQLHelper.add_user(user);

		StringResponse sRes = new StringResponse(token);
		context.json(sRes);
		context.status(200);
	};
}
