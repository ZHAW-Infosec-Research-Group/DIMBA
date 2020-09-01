package ch.zhaw.securitylab.DIBA.networking;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.data.metasettings.Metasettings;
import ch.zhaw.securitylab.DIBA.networking.listeners.ConnectionListener;

import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.Response.Listener;
import com.android.volley.toolbox.HttpHeaderParser;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/**
 * The Request object holding the data and storing the response listener for making https requests with volley.
 */
public class InRequest extends Request<InResponse>
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private final Object mLock = new Object();
	private Listener<InResponse> listener;
	private Map<String, String> data;

	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public InRequest(int method, String url, ConnectionListener connectionListener, Map<String, String> data) {
		super(method, getBaseUrl() + url, connectionListener);

		int timeout = DIBA.get().getMetasettingsDao().getSettings().getTimeout();
		this.listener = connectionListener;
		this.data = data;
		this.setRetryPolicy(new DefaultRetryPolicy(
				timeout,
				2,
				DefaultRetryPolicy.DEFAULT_BACKOFF_MULT
		));
	}
	
	private static String getBaseUrl() {
		Metasettings metasettings = DIBA.get().getMetasettingsDao().getSettings();
		return "https://" + metasettings.getIp() + ":8443";
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //

	@Override
	public Map<String, String> getHeaders() {
		Map<String, String>  params = new HashMap<String, String>();
		String jwt = DIBA.get().getJwt();
		if (jwt != null) {
			params.put("Authorization", "Bearer: " + jwt);
		}
		return params;
	}

	@Override
	protected Map<String, String> getParams()
	{
		return data;
	}


	@Override
	protected Response<InResponse> parseNetworkResponse(NetworkResponse networkResponse)
	{
		String message;
		try
		{
			message = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
		}
		catch (UnsupportedEncodingException e)
		{
			message = new String(networkResponse.data);
		}
		
		InResponse response = new InResponse(message, networkResponse.statusCode);
		return Response.success(response, HttpHeaderParser.parseCacheHeaders(networkResponse));
	}
	
	@Override
	protected void deliverResponse(InResponse response)
	{
		Response.Listener<InResponse> listener;
		synchronized (mLock)
		{
			listener = this.listener;
		}
		
		if (listener != null)
		{
			listener.onResponse(response);
		}
	}
}
