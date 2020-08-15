package ch.zhaw.securitylab.DIBA.activity.unauth;

import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;

/**
 * The info activity shows basic information about the InBank app.
 */
public class ActivityInfo extends ActivityDIBAAbstract
{
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityInfo() { super(R.layout.activity_info, ToolbarMode.NAV_AUTH, R.id.nav_go_about); }
	
}
