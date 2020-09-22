package ch.zhaw.securitylab.DIBA.networking;

import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Response;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.data.metasettings.Metasettings;

public class InRequestJSON extends JsonObjectRequest {

    private final Object mLock = new Object();
    private Response.Listener<InResponse> listener;

    public InRequestJSON(String url, JSONObject json, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(getBaseUrl() + url, json, listener, errorListener);

        int timeout = DIBA.get().getMetasettingsDao().getSettings().getTimeout();
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

    @Override
    public Map<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<String, String>();
        String jwt = DIBA.get().getJwt();
        if (jwt != null) {
            headers.put("Authorization", "Bearer: " + jwt);
        }
        return headers;
    }
}
