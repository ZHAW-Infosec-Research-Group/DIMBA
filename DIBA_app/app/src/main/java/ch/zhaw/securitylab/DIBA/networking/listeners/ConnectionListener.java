package ch.zhaw.securitylab.DIBA.networking.listeners;

import ch.zhaw.securitylab.DIBA.networking.InResponse;
import com.android.volley.Response;

/**
 * A combination of both a response listener and an error listener
 */
public interface ConnectionListener extends Response.Listener<InResponse>, Response.ErrorListener  {
}
