package ch.zhaw.securitylab.DIBA.networking.listeners;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.helpers.Toasty;
import ch.zhaw.securitylab.DIBA.networking.InResponse;

public class ListenerReport extends ListenerAbstractJSON {
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public void onResponse(JSONObject response) {
		super.onResponse(response);
		Toasty.longCenterToast("Successfully saved and sent bug-report.");
	}
	
	@Override
	protected String getRequestResource()
	{
		return "the bug report";
	}
	
}
