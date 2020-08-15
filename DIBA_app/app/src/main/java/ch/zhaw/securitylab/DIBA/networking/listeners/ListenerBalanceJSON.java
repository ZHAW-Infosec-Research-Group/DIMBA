package ch.zhaw.securitylab.DIBA.networking.listeners;

import org.json.JSONException;
import org.json.JSONObject;

import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain;

public class ListenerBalanceJSON extends ListenerAbstractJSON {

    private ActivityAuthMain activityAuthMain;

    public ListenerBalanceJSON(ActivityAuthMain activityAuthMain) {
        this.activityAuthMain = activityAuthMain;
    }

    @Override
    public void onResponse(JSONObject response) {
        super.onResponse(response);
        String balance = null;
        try {
            balance = response.getString("string");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        activityAuthMain.setBalance(balance);
    }

    @Override
    protected String getRequestResource()
    {
        return "the balance";
    }
}
