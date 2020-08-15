package ch.zhaw.securitylab.DIBA.navigation;

import android.app.Activity;
import android.os.Bundle;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityCredentials;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityInfo;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityLanding;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityMetasettings;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivitySettings;
import ch.zhaw.securitylab.DIBA.helpers.Extras;

/**
 * The drawer for all un-authenticated activities of InBank.
 */
public class NavigationUnAuth extends InNavigation {
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public NavigationUnAuth(Activity activity)
	{
		super(activity, R.menu.activity_landing_drawer);
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	protected Class<?> getClassForId(int viewID) {
		switch (viewID)
		{
			case R.id.nav_go_home:
				return ActivityLanding.class;
			case R.id.nav_go_login:
				return ActivityCredentials.class;
			case R.id.nav_go_sign_in:
				return ActivityCredentials.class;
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
	
	@Override
	protected Bundle getBundleForId(int viewID) {
		Bundle bundle = new Bundle();
		if (viewID == R.id.nav_go_login) bundle.putString(Extras.FRAGMENT, Extras.FRAGMENT_LOGIN);
		if (viewID == R.id.nav_go_sign_in) bundle.putString(Extras.FRAGMENT, Extras.FRAGMENT_SIGNIN);
		return bundle;
	}
	
}
