package ch.zhaw.securitylab.DIMBA.networking.listeners;

import ch.zhaw.securitylab.DIMBA.networking.InResponse;
import com.android.volley.Response;

/**
 * A combination of both a response listener and an error listener
 */
public interface ConnectionListener extends Response.Listener<InResponse>, Response.ErrorListener  {
}
