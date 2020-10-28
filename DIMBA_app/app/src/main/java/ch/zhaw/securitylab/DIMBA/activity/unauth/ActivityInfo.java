package ch.zhaw.securitylab.DIMBA.activity.unauth;

import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;

/**
 * The info activity shows basic information about the app.
 */
public class ActivityInfo extends ActivityDIMBAAbstract {
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityInfo() { super(R.layout.activity_info, ToolbarMode.NAV_AUTH, R.id.nav_go_about); }
	
}
