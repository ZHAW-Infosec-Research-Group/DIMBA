package ch.zhaw.securitylab.inbank.server.util;


import com.google.gson.Gson;

public class UtilGson
{
	private static UtilGson i = new UtilGson();
	public static UtilGson get() { return i; }
	private UtilGson() { if (i != null) throw new RuntimeException("Singleton already initialized."); }
	
	private Gson gson = new Gson();
	public Gson gson() { return gson; }
}
