package ch.zhaw.securitylab.dimba.server.controllers;

import ch.zhaw.securitylab.dimba.server.Server;
import ch.zhaw.securitylab.dimba.server.MySQLHelper;
import ch.zhaw.securitylab.dimba.server.user.Comment;
import static ch.zhaw.securitylab.dimba.server.util.Decode.fetchJSON;

import java.util.ArrayList;
import java.sql.Connection;
import java.text.*;
import java.util.Calendar;
import java.util.Date;
import io.javalin.http.Context;
import io.javalin.http.Handler;



public class ControllerSurvey extends ControllerParent {

	private static String html1 = "<html>"
								+ "	<head>"
								+ "		<!-- JS -->"
								+ "		<!--<script type='text/javascript' src='main.js'></script>-->"
								+ "     <script>\n"
								+ "        var post_comment = function() {"
								+ "           var m = document.getElementById('comment').value;"
								+ "           var o = document.getElementById('score');"
								+ "           var s = o.options[o.selectedIndex].value;"
								+ "           var today = new Date();"
	                            + "           var dd = String(today.getDate()).padStart(2, '0');"
	                            + "           var mm = String(today.getMonth() + 1).padStart(2, '0');"
	                            + "           var yyyy = today.getFullYear();"
	                            + "           today = dd + '-' + mm + '-' + yyyy;"
							    + "           var xmlhttp = new XMLHttpRequest();"
							    + "           xmlhttp.onload = function() {"
								+ "              if (xmlhttp.readyState === 4) {"
								+ "			        if (xmlhttp.status === 200) {"
								+ "		               var comments = document.getElementById('comments');"
                                + "                    var comment = \"<div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>\"+today+\"<div style='float:right'>Score:\"+s+\"</div></div>\"+m+\"</div></div>\";"
								+ "                    alert('Your comment is posted!');"
								+ "                    comments.innerHTML += comment;"
								+ "                 }\n"
								+ "              }\n"
								+ "           }\n"
                                + "           xmlhttp.open('POST', '/comment');"
                                + "           xmlhttp.setRequestHeader('Content-Type', 'application/json');"
                                + "           xmlhttp.send(JSON.stringify({ 'comment': m, 'date': today, 'score': s }));"
								+ "        }\n"
								+ "     </script>\n"
								+ "	</head>\n"
								+ "	<body style='font-family:arial;color:#3c3c3c'>"
								+ "		<div class='container' style='margin:20px 20px 20px 20px;text-align:left'>"
								+ "		<h1 style='color:#ef2633'>DIMBA Survey</h1>"
								+ "		<p style='border:1px solid #666;padding:5px;border-radius:3px;width:100%;'>"
								+ "         You recently opened account IBAN:</br> <a id='iban'>CH48123456789</a>"
								+ "     </p>"
								+ "		<div style='width:100%;'>"
								+ "		    <label for='score'>Please let us know what you think - provide a comment and a score from 1 (bad) to 5 (very good).</label>"
								+ "			<select name='service' id='score' style='width:100%;margin-top:10px;padding:5px;font-family:inherit;font-size:inherit'>"
								+ "			  <option value='1'>1</option>"
								+ "			  <option value='2'>2</option>" 
								+ "			  <option value='3'>3</option>"
								+ "			  <option value='4'>4</option>"
								+ "			  <option selected='selected' value='5'>5</option>"
								+ "			</select><br>"
								+ "			<textarea id='comment' style='margin-top:30px;width:100%;height:125px;font-family:inherit;font-size:inherit;' name='comment' form='commentForm' type='text' placeholder='Insert your comment here...'></textarea></br>"
								+ "         <button onclick='post_comment()' style='margin-top:10px;float:right;padding:10px;color:white;background-color:#2196f3;border:none;border-radius:5px;cursor:pointer;font-size:12pt;'>POST COMMENT</button>"
								+ "		</div>"
								+ "		<!-- comments from other users -->"
	                            + "     <div id='comments' style='display:inline-block;text-align:left;'>"
					            + "        <h3>Comments:</h3>"
			                    + "        <div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>10-09-2020<div style='float:right'>Score:5</div></div>Very good service, thank you!</div></div>"
			                    + "        <div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>10-09-2020<div style='float:right'>Score:3</div></div>It's OK, but I have seen better apps.</div></div>"
			                    + "        <div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>10-09-2020<div style='float:right'>Score:2</div></div>Not happy, I am thinking about using another bank.</div></div>";


	public static String buildHtml(ArrayList<Comment> comments) {
		String surveyHtml = html1;
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String today = dateFormat.format(Calendar.getInstance().getTime());
		for (int i=0; i<comments.size(); i++) {
			Comment c = comments.get(i);
			surveyHtml += "<div style='padding:5px;'><div style='border:1px solid black;margin:5px;padding:5px;width:300px;border-radius:3px;word-wrap:break-word;'><div style='border-bottom:1px solid #adadad;margin-bottom:10px;'>"+c.getDate()+"<div style='float:right'>Score:"+c.getScore()+"</div></div>"+c.getComment()+"</div></div>";
		}
		return surveyHtml;
	}

	//public static Handler handleLoginPost = context -> {
	public static Handler handleSurveyGet = context -> {
		Server.logger.info("Survey started");
		MySQLHelper.getDatabaseConnection();
		ArrayList<Comment> comments = MySQLHelper.get_comments();
		String surveyHtml = buildHtml(comments);
		context.html(surveyHtml);
		
	};

	public static Handler handleSurveyGetAction = context -> {
		String m = fetchJSON(context,"comment");
		String d = fetchJSON(context,"date");
		String s = fetchJSON(context,"score");
		MySQLHelper.add_comment(m,d,s);
		context.html("<h1>Your comment was posted!</h1><p>"+m+"</p>");
		Server.logger.info("Comment added "+m);
	};
}
