package ch.zhaw.securitylab.DIBA.networking.listeners;

import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIBA.networking.InResponse;

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
