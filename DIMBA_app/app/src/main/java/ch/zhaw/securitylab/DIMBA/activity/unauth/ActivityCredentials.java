package ch.zhaw.securitylab.DIMBA.activity.unauth;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import android.widget.Toast;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;

import java.util.HashMap;
import java.util.Map;

/**
 * The credentials activity displays a fragment.
 */
public class ActivityCredentials extends ActivityDIMBAAbstract
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private static final Map<Class<?>, Integer> ACTIVE_SCREENS = new HashMap<>();
	
	static
	{
		ACTIVE_SCREENS.put(FragmentLogin.class, R.id.nav_go_login);
		ACTIVE_SCREENS.put(FragmentSignIn.class, R.id.nav_go_sign_in);
	}
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityCredentials() { super(R.layout.activity_credentials, ToolbarMode.NAV_UN_AUTH); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		startFragment();
	}
	
	// -------------------------------------------- //
	// FRAGMENT
	// -------------------------------------------- //
	
	private void startFragment()
	{
		Intent intent = getIntent();
		if (intent == null)
		{
			errorInIntent();
			return;
		}
		
		Bundle bundle = intent.getExtras();
		if (bundle == null)
		{
			errorInIntent();
			return;
		}
		
		Fragment fragment = getFragment(bundle);
		if (fragment == null)
		{
			errorInIntent();
			return;
		}
		
		Integer navId = ACTIVE_SCREENS.get(fragment.getClass());
		if (navId != null) setNavigationActive(navId);
		
		getSupportFragmentManager().beginTransaction().add(R.id.content, fragment).commit();
	}
	
	private Fragment getFragment(Bundle bundle)
	{
		String name = bundle.getString(Extras.FRAGMENT);
		return Fragment.instantiate(this, name);
	}
	
	private void errorInIntent()
	{
		Toast.makeText(this, "Something wrong has happened, please send your leg :) log"
			+ "to the developers.", Toast.LENGTH_LONG).show();
		startActivity(new Intent(this, ActivityLanding.class));
	}
	
}
