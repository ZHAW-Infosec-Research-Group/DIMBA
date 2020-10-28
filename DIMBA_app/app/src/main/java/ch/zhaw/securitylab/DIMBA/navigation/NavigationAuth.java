package ch.zhaw.securitylab.DIMBA.navigation;

import android.app.Activity;
import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIMBA.activity.invest.ActivityAuthInvestWall;
import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMessages;
import ch.zhaw.securitylab.DIMBA.activity.pay.ActivityAuthPay;
import ch.zhaw.securitylab.DIMBA.activity.stock.ActivityAuthStockWall;
import ch.zhaw.securitylab.DIMBA.activity.unauth.ActivityInfo;
import ch.zhaw.securitylab.DIMBA.activity.unauth.ActivityLanding;
import ch.zhaw.securitylab.DIMBA.activity.unauth.ActivityMetasettings;
import ch.zhaw.securitylab.DIMBA.activity.unauth.ActivitySettings;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;

/**
 * The drawer for all authenticated activities.
 */
public class NavigationAuth extends InNavigation {
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public NavigationAuth(Activity activity)
	{
		super(activity, R.menu.activity_auth_main_drawer);
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	protected Class<?> getClassForId(int viewID) {
		switch (viewID)
		{
			case R.id.nav_go_home:
				return ActivityAuthMain.class;
			case R.id.nav_go_pay:
				return ActivityAuthPay.class;
			case R.id.nav_go_Investments:
				return ActivityAuthInvestWall.class;
			case R.id.nav_go_Stock:
				return ActivityAuthStockWall.class;
			case R.id.nav_go_Messages:
				return ActivityAuthMessages.class;
			case R.id.nav_go_login:
				DIMBA.get().resetUserName();
				DIMBA.get().resetJwt();
				return ActivityLanding.class;
			case R.id.nav_go_settings:
				return ActivitySettings.class;
			case R.id.nav_go_about:
				return ActivityInfo.class;
			case R.id.nav_go_meta:
				return ActivityMetasettings.class;
			default:
				return null;
		}
	}
	
}
