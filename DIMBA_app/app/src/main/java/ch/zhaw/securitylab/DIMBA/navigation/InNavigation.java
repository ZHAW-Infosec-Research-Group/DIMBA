package ch.zhaw.securitylab.DIMBA.navigation;

import android.app.Activity;
import android.app.TaskStackBuilder;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.material.navigation.NavigationView;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import android.view.MenuItem;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMessages;
import ch.zhaw.securitylab.DIMBA.activity.invest.ActivityAuthInvest;
import ch.zhaw.securitylab.DIMBA.activity.invest.ActivityAuthInvestWall;
import ch.zhaw.securitylab.DIMBA.activity.pay.ActivityAuthPay;

import java.util.Arrays;

/**
 * Implements abstraction for the two different drawers.
 */
public abstract class InNavigation implements NavigationView.OnNavigationItemSelectedListener
{
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final Class[] WITH_PARENT = {ActivityAuthInvest.class, ActivityAuthInvestWall.class, ActivityAuthPay.class, ActivityAuthMessages.class};
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	protected Activity activity;
	
	private int layoutId;
	public int getLayoutId() { return this.layoutId; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public InNavigation(Activity activity, int layoutId)
	{
		this.activity = activity;
		this.layoutId = layoutId;
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public boolean onNavigationItemSelected(@NonNull MenuItem item)
	{
		// Determine class for activity from id
		int id = item.getItemId();
		Class<?> clazz = this.getClassForId(id);
		Bundle bundle = this.getBundleForId(id);
		
		if (clazz != null) {
			Intent intent = new Intent(activity, clazz).putExtras(bundle);
			
			if (Arrays.asList(WITH_PARENT).contains(clazz)) {
				TaskStackBuilder.create(activity)
					.addParentStack(clazz)
					.addNextIntent(intent)
					.startActivities();
			}
			else
			{
				activity.startActivity(intent);
			}
		}
		
		// Close drawer if no action taken
		DrawerLayout drawer = activity.findViewById(R.id.drawer_layout);
		drawer.closeDrawer(GravityCompat.START);
		return true;
	}
	
	protected Bundle getBundleForId(int viewID)
	{
		return new Bundle();
	}
	
	// -------------------------------------------- //
	// ABSTRACT
	// -------------------------------------------- //
	
	protected abstract Class<?> getClassForId(int viewID);
	
}
