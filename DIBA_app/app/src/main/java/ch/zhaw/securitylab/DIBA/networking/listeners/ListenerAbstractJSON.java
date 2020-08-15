package ch.zhaw.securitylab.DIBA.networking.listeners;

import android.util.Log;

import org.json.JSONObject;
import ch.zhaw.securitylab.DIBA.helpers.Extras;

/**
 * Default implementations of the response methods log basic information about the response.
 * Each child class is a listener for a URL in the REST interface of the server.
 */
public abstract class ListenerAbstractJSON implements ConnectionListenerJSON {

    @Override
    public void onResponse(JSONObject response) {
        Log.println(Log.INFO, Extras.LOG_TAG, "Response in: " + this.getClass().getSimpleName());
        Log.println(Log.INFO, Extras.LOG_TAG, "StatusCode: " + 200);
        Log.println(Log.INFO, Extras.LOG_TAG, "Message: " + response.toString());
    }

//    protected String requestMake()
//    {
//        return "requesting";
//    }

    protected String getRequestResource()
    {
        return "this resource";
    }
}
