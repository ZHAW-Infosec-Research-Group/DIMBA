package ch.zhaw.securitylab.DIBA.activity.pay;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputEditText;

import java.math.BigDecimal;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.ProviderSettings;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityBoundAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.data.payment.Payment;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.Listener2FA;

/**
 * The pay make activity collect the payment information and routes to the pay accept activity.
 */
public class ActivityAuthPayMake extends ActivityBoundAbstract {

	private EditText target;
	private TextInputEditText amount;

	public ActivityAuthPayMake() {
		super(R.layout.activity_auth_pay_make, ToolbarMode.NAV_AUTH, R.id.nav_go_pay);
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		pickerCurrency = findViewById(R.id.payCurrencyPicker);
		target = findViewById(R.id.payTarget);
		amount = findViewById(R.id.payAmount);

		button(createSendListener(), R.id.payGoAccept);
		addTargetDoneAction();
		
		showPayslipIfLoaded();
	}
	
	// -------------------------------------------- //
	// TARGET
	// -------------------------------------------- //
	
	private void addTargetDoneAction() {
		target.setOnEditorActionListener((TextView v, int id, KeyEvent event) -> {
			if (id == EditorInfo.IME_ACTION_DONE || id == EditorInfo.IME_NULL) {
				sendMoney();
				return true;
			}
			return false;
		});
	}
	
	// -------------------------------------------- //
	// PAYSLIP
	// -------------------------------------------- //
	
	@Override
	protected void onResume() {
		super.onResume();
		showPayslipIfLoaded();
	}
	
	private void showPayslipIfLoaded() {
		String paySlip = DIBA.get().getPaySlip();
		if (paySlip == null) return;
		
		TextView textView = findViewById(R.id.payShowSlip);
		textView.setVisibility(View.VISIBLE);
		textView.setText(paySlip);
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener createSendListener() {
		return (View v) -> {
			sendMoney();
		};
	}
	
	private void sendMoney() {
		String target = this.target.getText().toString();
		String amount = this.amount.getText().toString();
		String currency = getCurrency(pickerCurrency);
		String amountSFr = getAmountInSfr(amount, currency);
		String owner     = DIBA.get().getUserName();
		Payment payment  = new Payment(owner, target, new BigDecimal(amount), new BigDecimal(amountSFr), currency);
		// REQUEST CODE FOR 2 Factor Authentication
		// Send to server
		ConnectionBuilder.create()
				.url("/2FAtoken")
				.data(payment)
				.listenerJSON(new Listener2FA())
				.buildJSON();

		Bundle fieldData = fetchFieldData();
		Context context = ActivityAuthPayMake.this;
		
		// Fetch Intent executor variables
		String[] content = ProviderSettings.getContent();
		String packageName = content[0];
		String className   = content[1];
		
		// Make sure both fields are set
		if (packageName == null || className == null) {
			Toast.makeText(context, "An error occurred with sending the money.", Toast.LENGTH_SHORT).show();
			return;
		}
		
		// Form Intent
		Intent intentConfirm = new Intent();
		intentConfirm.setClassName(packageName, className);
		
		// Put Extras
		intentConfirm.putExtras(fieldData);
		
		// Check if was possible to resolve
		ComponentName resolved = intentConfirm.getComponent();
		if (resolved == null) {
			Toast.makeText(context, "An error occurred with sending the money.", Toast.LENGTH_SHORT).show();
			return;
		}
		
		try {
			startActivity(intentConfirm);
		}
		catch (Exception e) {
			e.printStackTrace();
			Toast.makeText(context, "An error occurred with sending the money.", Toast.LENGTH_SHORT).show();
		}
	}
	
	private Bundle fetchFieldData() {
		// Create
		Bundle bundle = new Bundle();
		
		// Fill
		EditText fieldAmount = findViewById(R.id.payAmount);
		String amount = fieldAmount.getText().toString();
		bundle.putString(Extras.AMOUNT, amount);
		
		EditText fieldTarget = findViewById(R.id.payTarget);
		String target = fieldTarget.getText().toString();
		bundle.putString(Extras.TARGET, target);
		
		String currency = getCurrency(pickerCurrency);
		bundle.putString(Extras.CURRENCY, currency);
		
		bundle.putString(Extras.AMOUNT_SFR, getAmountInSfr(amount, currency));
		
		// Return
		return bundle;
	}
	
	
}
