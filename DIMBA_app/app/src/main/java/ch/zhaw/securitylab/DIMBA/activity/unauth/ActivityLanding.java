package ch.zhaw.securitylab.DIMBA.activity.unauth;

import androidx.fragment.app.FragmentManager;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;

import android.util.Log;
import android.view.View;

import java.io.File;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;


/**
 * The landing activity routes to all un-authenticated activities in DIMBA.
 */
public class ActivityLanding extends ActivityDIMBAAbstract {
	private SharedPreferences preferences;

	public ActivityLanding() { super(R.layout.activity_landing, ToolbarMode.NAV_UN_AUTH, R.id.nav_go_home); }

	@Override
	protected void onCreate(@Nullable Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		DIMBA.get().resetUserName();
		DIMBA.get().resetJwt();

		// Root detection
		preferences = context.getSharedPreferences("rootDetPreferences", Context.MODE_PRIVATE);
		if (! preferences.getBoolean(Extras.ROOT_DET_DISABLE, true)) {
			boolean rooted = rootedDevice();
			FragmentManager fm = getSupportFragmentManager();
			FragmentRootDetection alertDialog = FragmentRootDetection.newInstance(rooted);
			alertDialog.show(fm, "fragment_alert");
		}
	}

	@Override
	protected void onResume() {
		super.onResume();

		// Root detection
		preferences = context.getSharedPreferences("rootDetPreferences", Context.MODE_PRIVATE);
		if (! preferences.getBoolean(Extras.ROOT_DET_DISABLE, true)) {
			boolean rooted = rootedDevice();
			FragmentManager fm = getSupportFragmentManager();
			FragmentRootDetection alertDialog = FragmentRootDetection.newInstance(rooted);
			alertDialog.show(fm, "fragment_alert");
		}
	}

	public boolean rootedDevice() {
		boolean rooted = false;
		// 1st check if it exists su command
		for (String file : System.getenv("PATH").split(":")) {
			if (new File(file, "su").exists()) {
				rooted = true;
				Log.i(Extras.LOG_TAG, "Detected Rooted Device!");
			}
		}
		// 2nd check if test-keys is in the build tags
		String str = Build.TAGS;
		if (str != null && str.contains("test-keys")) {
			rooted = true;
			Log.i(Extras.LOG_TAG, "Detected Rooted Device!");
		}
		// 3rd check if known root files exist
		for (String file : new String[]{"/system/app/Superuser.apk", "/system/xbin/daemonsu", "/system/etc/init.d/99SuperSUDaemon",
				"/system/bin/.ext/.su", "/system/etc/.has_su_daemon", "/system/etc/.installed_su_daemon",
				"/dev/com.koushikdutta.superuser.daemon/", "/system/app/Superuser/Superuser.apk", "/system/app/Superuser.apk",
				"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su",
				"/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su",
				"re.robv.android.xposed.installer-1.apk","/data/app/eu.chainfire.supersu-1/base.apk"}) {
			if (new File(file).exists()) {
				rooted = true;
				Log.i(Extras.LOG_TAG, "Detected Rooted Device!");
			}
		}
		return rooted;
	}

	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	public void buttonLanding(View view)
	{
		int id = view.getId();
		Class<?> clazz = null;
		Intent intent = null;
		switch (id)
		{
			case R.id.landingGoLogin:
			case R.id.landingImageLogin:
				intent = new Intent(this, ActivityCredentials.class);
				intent.putExtra(Extras.FRAGMENT, Extras.FRAGMENT_LOGIN);
				break;
			case R.id.landingGoSignIn:
			case R.id.landingImageSignin:
				intent = new Intent(this, ActivityCredentials.class);
				intent.putExtra(Extras.FRAGMENT, Extras.FRAGMENT_SIGNIN);
				break;
			case R.id.landingLogo:
				if (!getResources().getBoolean(R.bool.developer_entrance)) return;
				clazz = ActivityAuthMain.class;
				break;
			case R.id.landingGoAbout:
				clazz = ActivityInfo.class;
				break;
		}
		if (clazz != null) intent = new Intent(this, clazz);
		if (intent != null) startActivity(intent);
	}
	
}
