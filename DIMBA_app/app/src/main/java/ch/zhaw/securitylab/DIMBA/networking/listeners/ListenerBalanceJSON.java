package ch.zhaw.securitylab.DIMBA.networking.listeners;

import org.json.JSONException;
import org.json.JSONObject;

import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain;

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
