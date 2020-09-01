package ch.zhaw.securitylab.DIBA.networking;

import com.android.volley.Response;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.data.metasettings.Metasettings;

public class InRequestJSON extends JsonObjectRequest {


    public InRequestJSON(String url, JSONObject jsonRequest, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(getBaseUrl() + url, jsonRequest, listener, errorListener);
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
