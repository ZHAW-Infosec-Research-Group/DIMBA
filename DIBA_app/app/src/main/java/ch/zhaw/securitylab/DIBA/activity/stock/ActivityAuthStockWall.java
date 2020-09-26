package ch.zhaw.securitylab.DIBA.activity.stock;



import android.app.TaskStackBuilder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import org.apache.commons.codec.binary.Hex;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityBoundAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;

public class ActivityAuthStockWall extends ActivityBoundAbstract {

    // -------------------------------------------- //
    // FIELDS
    // -------------------------------------------- //

    private SharedPreferences defaultPreferences;

    // -------------------------------------------- //
    // CONSTRUCT & CREATE
    // -------------------------------------------- //

    public ActivityAuthStockWall() { super(R.layout.activity_auth_stock_wall, ToolbarMode.NAV_AUTH, R.id.nav_go_Stock); }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        defaultPreferences = PreferenceManager.getDefaultSharedPreferences(DIBA.get());
        button(accessStockMarket(), R.id.wallButtonStock);
    }


    private void startActivityWithCustomBackStack() {
        Class clazz = ActivityAuthStockList.class;

        TaskStackBuilder.create(this)
                .addParentStack(clazz)
                .addNextIntent(new Intent(this, clazz))
                .startActivities();
    }

    // -------------------------------------------- //
    // BUTTONS
    // -------------------------------------------- //
//
    private View.OnClickListener accessStockMarket()
    {
        return (View v) ->
        {
            boolean access = false;
            String usercode = ((EditText) findViewById(R.id.inputStockSecret)).getText().toString();
            String userhash = computeHash(usercode);
            System.out.println(userhash);
            String code = getStockMarketHash();
            if (userhash.equals(code)) {
                access = true;
            }
            if (access) {
                startActivityWithCustomBackStack();
            }
            else {
                Toast.makeText(ActivityAuthStockWall.this, "The code is not valid!", Toast.LENGTH_LONG).show();
            }
        };
    }

    public String getStockMarketHash() {
        return getString(R.string.hash);
    }
    public String computeHash(String code) {

        MessageDigest md;
        try {
            md = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 hash should be available", e);
        }
        String salt = getString(R.string.salt);
        byte[] c = (salt+code).getBytes();
        md.update(c);

        byte[] h = md.digest();
        return String.valueOf(Hex.encodeHex(h));
    }
}
