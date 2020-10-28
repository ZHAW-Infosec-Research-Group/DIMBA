package ch.zhaw.securitylab.DIMBA.activity.pay;

import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;

/**
 * The payslip info activity displays basic UI information about the payslip activity.
 */
public class ActivityAuthPaySlipInfo extends ActivityDIMBAAbstract
{
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthPaySlipInfo() { super(R.layout.activity_auth_pay_slip_info, ToolbarMode.NAV_AUTH, R.id.nav_go_pay); }
	
}
