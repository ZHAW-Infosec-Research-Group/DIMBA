package ch.zhaw.securitylab.DIMBA.networking.listeners;

import com.android.volley.Response;

import org.json.JSONObject;

/**
 * A combination of both a response listener and an error listener for JSON objects/arrays
 */
public interface ConnectionListenerJSON extends Response.Listener<JSONObject> {
}
