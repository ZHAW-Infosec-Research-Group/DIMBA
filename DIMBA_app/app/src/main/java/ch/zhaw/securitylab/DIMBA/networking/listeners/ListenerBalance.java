package ch.zhaw.securitylab.DIMBA.networking.listeners;

import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIMBA.networking.InResponse;

public class ListenerBalance extends ListenerAbstract {
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private ActivityAuthMain activityAuthMain;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public ListenerBalance(ActivityAuthMain activityAuthMain)
	{
		this.activityAuthMain = activityAuthMain;
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public void onResponse(InResponse response)
	{
		super.onResponse(response);
		
		activityAuthMain.setBalance(response.getDecodedMessage());
	}
	
	@Override
	protected String getRequestResource()
	{
		return "the balance";
	}
}
