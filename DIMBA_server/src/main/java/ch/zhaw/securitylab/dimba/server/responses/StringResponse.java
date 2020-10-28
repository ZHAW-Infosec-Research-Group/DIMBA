package ch.zhaw.securitylab.dimba.server.responses;


public class StringResponse {

	private String s;
	
	public StringResponse(String s) {
		this.s = s;
	}

	public  String getString() { return this.s; }
}
