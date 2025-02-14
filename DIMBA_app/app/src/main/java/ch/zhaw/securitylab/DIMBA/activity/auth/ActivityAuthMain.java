package ch.zhaw.securitylab.DIMBA.activity.auth;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import androidx.fragment.app.FragmentManager;


import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIMBA.activity.invest.ActivityAuthInvestWall;
import ch.zhaw.securitylab.DIMBA.activity.pay.ActivityAuthPay;
import ch.zhaw.securitylab.DIMBA.activity.stock.ActivityAuthStockWall;
import ch.zhaw.securitylab.DIMBA.activity.unauth.ActivityLanding;
import ch.zhaw.securitylab.DIMBA.activity.unauth.FragmentSurvey;
import ch.zhaw.securitylab.DIMBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIMBA.networking.listeners.ListenerBalanceJSON;
import ch.zhaw.securitylab.DIMBA.report.ReportCollector;

/**
 * The main authenticated activity handles fetching and displaying the balance and routing to
 * other authenticated activities.
 */
public class ActivityAuthMain extends ActivityDIMBAAbstract {
	private SharedPreferences preferences;

	public ActivityAuthMain() { super(R.layout.activity_auth_main, ToolbarMode.NAV_AUTH, R.id.nav_go_home); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		//Show survey link if new user
		Intent intent = getIntent();
		if (intent.getBooleanExtra("firstLogin", false) == true) {
			FragmentManager fm = getSupportFragmentManager();
			FragmentSurvey alertDialog = FragmentSurvey.newInstance();
			alertDialog.show(fm, "fragment_alert");
		}

		button(onFetchBalance(), R.id.mainBalanceFetch, R.id.mainImageBalance);
		button(ActivityAuthPay.class, R.id.mainGoPayment, R.id.mainImagePay);
		button(ActivityAuthInvestWall.class, R.id.mainGoInvestment, R.id.mainImageInvest);
		button(ActivityAuthStockWall.class, R.id.mainStockMarket, R.id.mainImageStockMarket);
		button(ActivityAuthMessages.class, R.id.mainGoMessages, R.id.mainImageMessage);
		button(ActivitySurvey.class, R.id.mainGoSurvey, R.id.mainImageSurvey);
		button(onLogout(), R.id.mainGoLogout, R.id.mainImageLogout);
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onFetchBalance() {
		return (View v) -> {
			ConnectionBuilder.create()
					.url("/balance")
					.listenerJSON(new ListenerBalanceJSON(ActivityAuthMain.this))
					.buildJSON();
		};
	}
	
	private OnClickListener onLogout() {
		return (View v) -> {
			DIMBA.get().resetUserName();
			DIMBA.get().resetJwt();
			startActivity(new Intent(this, ActivityLanding.class).setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
																			   | Intent.FLAG_ACTIVITY_CLEAR_TASK
																			   | Intent.FLAG_ACTIVITY_CLEAR_TOP));
			finish();
		};
	}
	
	@Override
	public void bug() {
		ReportCollector.verifyStoragePermissions(this);
		ReportCollector.collectAndSend(this);
	}
	
	// -------------------------------------------- //
	// BALANCE
	// -------------------------------------------- //
	
	public void setBalance(final String balance) {
		runOnUiThread(() -> {
			Button button = findViewById(R.id.mainBalanceFetch);
			button.setText("Balance: " + balance + "SFr.");
			
			Handler handler = new Handler();
			Runnable r = () ->
			{
				runOnUiThread(() ->
				{
					button.setText("Fetch Balance");
				});
			};
			handler.postDelayed(r, 15000);
		});
	}
	
}
