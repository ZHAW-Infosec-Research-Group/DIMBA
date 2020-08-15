package ch.zhaw.securitylab.DIBA.networking;

import com.android.volley.Response;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import ch.zhaw.securitylab.DIBA.DIBA;

public class InRequestJSON extends JsonObjectRequest {


    public InRequestJSON(String url, JSONObject jsonRequest, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(url, jsonRequest, listener, errorListener);
    }

    @Override
    public Map<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<String, String>();
        headers.put("Content-Type", "application/json");
        String jwt = DIBA.get().getJwt();
        if (jwt != null) {
            headers.put("Authorization", "Bearer: " + jwt);
        }
        return headers;
    }
}
