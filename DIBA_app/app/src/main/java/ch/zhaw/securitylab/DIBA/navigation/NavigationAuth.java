package ch.zhaw.securitylab.DIBA.navigation;

import android.app.Activity;
import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIBA.activity.invest.ActivityAuthInvestWall;
import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMessages;
import ch.zhaw.securitylab.DIBA.activity.pay.ActivityAuthPay;
import ch.zhaw.securitylab.DIBA.activity.stock.ActivityAuthStockWall;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityInfo;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityLanding;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityMetasettings;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivitySettings;
import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;

/**
 * The drawer for all authenticated activities of InBank.
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
				DIBA.get().resetUserName();
				DIBA.get().resetJwt();
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
