package ch.zhaw.securitylab.DIBA.activity.pay;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ToggleButton;

import androidx.annotation.RequiresApi;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.data.list.ListAdapterFactory;
import ch.zhaw.securitylab.DIBA.data.payment.Payment;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerPayment;

import java.math.BigDecimal;

/**
 * The pay accept activity is a safeguard for the payment process. Only if the user specifically accepts a payment,
 * a transaction is made to the server.
 */
public class ActivityAuthPayAccept extends ActivityDIBAAbstract {
	
	private ListView listExtras;
	
	public ActivityAuthPayAccept() { super(R.layout.activity_auth_pay_accept, ToolbarMode.NAV_AUTH, R.id.nav_go_pay, false); }
	
	@RequiresApi(api = Build.VERSION_CODES.O)
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		boolean isEmulator = Build.FINGERPRINT.startsWith("generic")
				|| Build.FINGERPRINT.startsWith("unknown")
				|| Build.MODEL.contains("google_sdk")
				|| Build.MODEL.contains("Emulator")
				|| Build.MODEL.contains("Android SDK built for x86")
				|| Build.BOARD == "QC_Reference_Phone" //bluestacks
				|| Build.MANUFACTURER.contains("Genymotion")
				|| Build.HOST.startsWith("Build") //MSI App Player
				|| (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic"))
				|| "google_sdk" == Build.PRODUCT;

		listExtras = findViewById(R.id.payListExtras);
		TextView textView = findViewById(R.id.payTextComplete);
		String text = "An SMS message with a code to confirm the payment was sent to your phone (the SMS message is simulated and you can get the code from the server output).\n" +
				"Enter the code to confirm the payment.\n\n" +
				"(Or to prove that you managed to crack the code generation algorithm:\n" +
				"Enter the code that would be used if the payment were done at 2030-01-31 12:00:00)";
		textView.setText(text);

		// Get Intent bundle
		Bundle bundle = getIntent().getExtras();
		
		// Check input
		checkAmount(bundle);
		
		// Create Elements
		button(onPayAccept(bundle), R.id.payAcceptPayment);
		button(onPayDecline(), R.id.payDeclinePayment);
		
		this.createShowToggle();
		this.createListView(bundle);
	}
	
	private void checkAmount(Bundle bundle) {
		if (bundle == null) return;
		
		String amountString = bundle.getString(Extras.AMOUNT);
		BigDecimal amount = new BigDecimal(amountString);
		amount = amount.abs();
		bundle.putString(Extras.AMOUNT, amount.toString());
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onPayAccept(final Bundle bundle) {
		return (View v) -> {
			String target    = bundle.getString(Extras.TARGET);
			String amount    = bundle.getString(Extras.AMOUNT);
			String amountSFr = bundle.getString(Extras.AMOUNT_SFR);
			String currency  = bundle.getString(Extras.CURRENCY);
			String owner     = DIBA.get().getUserName();

			Payment payment  = new Payment(owner, target, new BigDecimal(amount), new BigDecimal(amountSFr), currency);
			EditText editText = findViewById(R.id.editOTP);
			String code       = String.valueOf(editText.getText());
			// Send to server
			ConnectionBuilder.create()
				.url("/payments")
				.data(payment)
				.dataRaw("OTP",code)
				.listenerJSON(new ListenerPayment(payment, ActivityAuthPayAccept.this))
				.buildJSON();
		};
	}
	
	private void createShowToggle() {
		ToggleButton toggleShow = findViewById(R.id.payToggleShow);
		toggleShow.setOnCheckedChangeListener((CompoundButton buttonView, boolean isChecked) -> {
			listExtras.setVisibility(isChecked ? View.VISIBLE : View.INVISIBLE);
		});
	}
	
	private OnClickListener onPayDecline() {
		return (View v) -> finish();
	}
	
	// -------------------------------------------- //
	// LIST VIEW
	// -------------------------------------------- //
	
	private void createListView(Bundle bundle) {
		ListAdapter listAdapter = ListAdapterFactory.get().getAdapterPay(context, bundle);
		listExtras.setAdapter(listAdapter);
	}
	
}
