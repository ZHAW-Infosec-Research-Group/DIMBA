package ch.zhaw.securitylab.DIBA.networking;


import com.android.volley.Request;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONObject;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.data.list.DataCarrier;
import ch.zhaw.securitylab.DIBA.networking.listeners.ConnectionListener;
import ch.zhaw.securitylab.DIBA.networking.listeners.ConnectionListenerJSON;
import ch.zhaw.securitylab.DIBA.networking.listeners.ErrorListenerJSON;

import java.util.HashMap;
import java.util.Map;

import static ch.zhaw.securitylab.DIBA.helpers.Decode.encode;

/**
 * A builder pattern class to ease the creation of a http request using volley.
 */
public class ConnectionBuilder {
	
	private ConnectionListener listener;
	private ConnectionListenerJSON listenerJSON;
	private Map<String, String> data = new HashMap<>();
	private JSONObject json = new JSONObject();
	private String url;
	private int method = Request.Method.POST;
	private boolean execute = true;
	
	private ConnectionBuilder() {}
	
	public static ConnectionBuilder create() {
		return new ConnectionBuilder();
	}
	
	public ConnectionBuilder data(String key, String value) {
		this.data.put(encode(key), encode(value));
		return this;
	}

	public ConnectionBuilder method(int m) {
		this.method = m;
		return this;
	}
	
	public ConnectionBuilder dataRaw(String key, String value) {
		this.data.put(key, value);
		return this;
	}
	
	public ConnectionBuilder data(DataCarrier dataCarrier) {
		this.data.putAll(dataCarrier.toConnectionData());
		return this;
	}
	
	public ConnectionBuilder listener(ConnectionListener listener) {
		this.listener = listener;
		return this;
	}

	public ConnectionBuilder listenerJSON(ConnectionListenerJSON listenerJSON) {
		this.listenerJSON = listenerJSON;
		return this;
	}
	
	public ConnectionBuilder url(String url) {
		this.url = "https://10.0.2.2:8443"+url;
		return this;
	}
	
	public void build() {
		if (!execute) return;
		if (url == null || listener == null) throw new NullPointerException("Build incomplete");
		new Thread(() -> {
			InRequest inRequest = new InRequest(method ,url, listener, data);
			DIBA.get().getQueue().add(inRequest);
		}).start();
	}

	public void buildJSON() {
		if (!execute) return;
		if (url == null || listenerJSON == null) throw new NullPointerException("Build incomplete");
		new Thread(() -> {
			JsonObjectRequest req;
			if (data.isEmpty()) {
				req = new InRequestJSON(url, null, listenerJSON, new ErrorListenerJSON());
			} else {
				req = new InRequestJSON(url, new JSONObject(data), listenerJSON, new ErrorListenerJSON());
			}
			DIBA.get().getQueue().add(req);
		}).start();
	}
	
//	public ConnectionBuilder dataJwt(Activity activity) {
//		try {
////			return this.data("jwt", InBank.get().getJwtOrThrow());
//			return this.data("jwt", InBank.get().getJwt());
//		} catch (Exception e) {
//			Log.e(Extras.LOG_TAG, e.getMessage());
//			Toast.makeText(activity, "You were not logged in. Please log in to execute this action.", Toast.LENGTH_LONG).show();
//			Intent intent = new Intent(activity, ActivityLanding.class);
//			TaskStackBuilder.create(activity)
//				.addNextIntent(intent)
//				.startActivities();
//			execute = false;
//			return this;
//		}
//	}
	
}
