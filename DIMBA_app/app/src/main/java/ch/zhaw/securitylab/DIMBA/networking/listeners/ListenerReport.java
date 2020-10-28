package ch.zhaw.securitylab.DIMBA.networking.listeners;

import org.json.JSONObject;

import ch.zhaw.securitylab.DIMBA.helpers.Toasty;

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
