package ch.zhaw.securitylab.DIMBA.networking.listeners;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;

import org.json.JSONException;
import org.json.JSONObject;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;

public class ListenerLoginJSON  extends ListenerAbstractJSON {

    // -------------------------------------------- //
    // FIELDS
    // -------------------------------------------- //

    private DIMBA DIMBA = ch.zhaw.securitylab.DIMBA.DIMBA.get();
    private AppCompatActivity activity;

    // -------------------------------------------- //
    // CONSTRUCT
    // -------------------------------------------- //

    public ListenerLoginJSON(AppCompatActivity activity) {
        this.activity = activity;
    }

    // -------------------------------------------- //
    // OVERRIDE
    // -------------------------------------------- //

    @Override
    public void onResponse(JSONObject response) {
        super.onResponse(response);
        String jwtToken = null;
        try {
            jwtToken = response.getString("string");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Log.i(Extras.LOG_TAG, "Login successful.");
        Log.i(Extras.LOG_TAG, "JWT: " + jwtToken);

        DIMBA.setJwt(jwtToken);

        Intent intent = new Intent(activity, ActivityAuthMain.class);
        intent.putExtra("firstLogin", false);
        TaskStackBuilder.create(activity)
                .addNextIntent(intent)
                .startActivities();
    }

    @Override
    protected String getRequestResource()
    {
        return "login in";
    }

}
