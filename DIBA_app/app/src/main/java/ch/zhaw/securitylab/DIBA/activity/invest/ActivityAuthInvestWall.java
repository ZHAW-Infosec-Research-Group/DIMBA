package ch.zhaw.securitylab.DIBA.activity.invest;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityBoundAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.data.payment.Payment;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerPayment;

import java.math.BigDecimal;

/**
 * The Invest wall activity serves as a paywall to the investment activity. It collects money or routes to
 * the main investment activity if a VIP-passcode can be named.
 */
public class ActivityAuthInvestWall extends ActivityBoundAbstract
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private SharedPreferences defaultPreferences;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthInvestWall() { super(R.layout.activity_auth_invest_wall, ToolbarMode.NAV_AUTH, R.id.nav_go_Investments); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		
		defaultPreferences = PreferenceManager.getDefaultSharedPreferences(DIBA.get());
		
		// If already VIP, skip wall
		if (isVip())
		{
			startActivityWithCustomBackStack();
		}
		
		button(onVipCheck(), R.id.wallButtonCheck);
		button(onVipPurchase(), R.id.wallButtonPurchase);
	}
	
	private void startActivityWithCustomBackStack()
	{
		Class clazz = ActivityAuthInvest.class;
		
		TaskStackBuilder.create(this)
			.addParentStack(clazz)
			.addNextIntent(new Intent(this, clazz))
			.startActivities();
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onVipCheck()
	{
		return (View v) ->
		{
			boolean access = false;
			
			// Maybe already in preferences after opening the screen or after payment
			if (isVip())
			{
				access = true;
			}
			
			// Maybe Access-Code retrieval from Mail
			String vipAccessCode = ((EditText) findViewById(R.id.wallAlready)).getText().toString();
			String vipPass = getString(R.string.wall_vip);
			if (vipPass.equals(vipAccessCode))
			{
				makeVip();
				access = true;
			}
			
			if (access)
			{
				startActivityWithCustomBackStack();
			}
			else
			{
				// Inform that they were not vips
				Toast.makeText(ActivityAuthInvestWall.this, "Sorry, you are not VIP (yet).", Toast.LENGTH_SHORT).show();
			}
		};
	}
	
	private OnClickListener onVipPurchase() {
		return (View v) -> {
			BigDecimal amount = new BigDecimal("200");
			String currency = null;
			currency = getSfrString();
			Payment payment = new Payment(DIBA.get().getUserName(), "bank", amount, amount, currency);
			
			// Deduce 200.- from users money
			ConnectionBuilder.create()
				.url("/payments")
				.data(payment)
				.listenerJSON(new ListenerPayment(payment, null))
				.buildJSON();
			
			// Send retrieval code to mail
			Toast.makeText(this, "VIP Code has been sent to your mail.", Toast.LENGTH_SHORT).show();
			
			// Add VIP to user
			makeVip();
			
			// Relay
			startActivity(new Intent(this, ActivityAuthInvest.class));
		};
	}
	
	// -------------------------------------------- //
	// VIP
	// -------------------------------------------- //
	
	private void makeVip()
	{
		defaultPreferences.edit().putBoolean(Extras.SHARED_VIP, true).apply();
	}
	
	private boolean isVip() {
		return defaultPreferences.contains(Extras.SHARED_VIP);
	}
	
}
