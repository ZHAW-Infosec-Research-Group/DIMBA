package ch.zhaw.securitylab.DIBA.networking.listeners;

import org.json.JSONObject;

public class Listener2FA extends ListenerAbstractJSON {

    public Listener2FA() {
    }

    @Override
    public void onResponse(JSONObject response) {
        super.onResponse(response);
        System.out.println(response.toString());
    }

    @Override
    protected String getRequestResource()
    {
        return "the 2FAtoken";
    }
}
