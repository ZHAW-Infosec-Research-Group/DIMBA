package ch.zhaw.securitylab.DIBA.activity.pay;

import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;

/**
 * The payslip info activity displays basic UI information about the payslip activity.
 */
public class ActivityAuthPaySlipInfo extends ActivityDIBAAbstract
{
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthPaySlipInfo() { super(R.layout.activity_auth_pay_slip_info, ToolbarMode.NAV_AUTH, R.id.nav_go_pay); }
	
}
