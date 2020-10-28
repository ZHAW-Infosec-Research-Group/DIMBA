package ch.zhaw.securitylab.dimba.server.user;



public class Comment {

	private String comment;
	private String date;
	private String score;

	public Comment(String c, String d, String s) {
		this.comment = c;
		this.date    = d;
		this.score   = s;
	}

	public String getComment() {
		return this.comment;
	}
	public String getDate() {
		return this.date;
	}
	public String getScore() {
		return this.score;
	}
}
