package ch.zhaw.securitylab.DIMBA.networking.listeners;

import android.util.Log;
import android.widget.Toast;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;
import ch.zhaw.securitylab.DIMBA.networking.InResponse;

import com.android.volley.VolleyError;

/**
 * Default implementations of the response methods log basic information about the response.
 * Each child class is a listener for a URL in the REST interface of the server.
 */
public abstract class ListenerAbstract implements ConnectionListener
{
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public void onErrorResponse(VolleyError error)
	{
		if (error.networkResponse == null)
		{
			Log.e(Extras.LOG_TAG, error.toString());
		}
		else
		{
			log(Log.ERROR, getErrorData(error), error.networkResponse.statusCode);
		}
		
		Toast.makeText(DIMBA.get(), getErrorToast(), Toast.LENGTH_LONG).show();
	}
	
	@Override
	public void onResponse(InResponse response)
	{
		log(Log.INFO, response.getMessage(), response.getStatusCode());
	}

	// -------------------------------------------- //
	// CONVENIENCE > LOG
	// -------------------------------------------- //
	
	private void log(int priority, String message, int statusCode)
	{
		Log.println(priority, Extras.LOG_TAG, "Response in: " + this.getClass().getSimpleName());
		Log.println(priority, Extras.LOG_TAG, "StatusCode: " + statusCode);
		Log.println(priority, Extras.LOG_TAG, "Message: " + message);
	}
	
	protected static String getErrorData(VolleyError error)
	{
		if (error.networkResponse == null) return "";
		return new String(error.networkResponse.data);
	}
	
	// -------------------------------------------- //
	// ERROR TOAST
	// -------------------------------------------- //
	
	private String getErrorToast()
	{
		return "Something wrong happened with " + requestMake() +" " + getRequestResource() + "." +
				   "\nMake sure you have got an internet connection." +
				   "\n(Maybe your Metasettings are not configured yet or the server is not running)";
	}
	
	protected String requestMake()
	{
		return "requesting";
	}
	
	protected String getRequestResource()
	{
		return "this resource";
	}
	
}
