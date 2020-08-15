package ch.zhaw.securitylab.DIBA.networking.listeners;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;

import org.json.JSONException;
import org.json.JSONObject;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIBA.helpers.Extras;


public class ListenerLoginRegisterJSON extends ListenerAbstractJSON {

    // -------------------------------------------- //
    // FIELDS
    // -------------------------------------------- //

    private DIBA diba = DIBA.get();
    private AppCompatActivity activity;

    // -------------------------------------------- //
    // CONSTRUCT
    // -------------------------------------------- //

    public ListenerLoginRegisterJSON(AppCompatActivity activity) {
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

        diba.setJwt(jwtToken);

        Intent intent = new Intent(activity, ActivityAuthMain.class);
        TaskStackBuilder.create(activity)
                .addNextIntent(intent)
                .startActivities();
    }

    @Override
    protected String getRequestResource()
    {
        return "login in / creating an account";
    }
}
