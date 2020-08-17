package ch.zhaw.securitylab.DIBA.activity.invest;

import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;


import androidx.core.app.ActivityCompat;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityBoundAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.data.invest.Investment;
import ch.zhaw.securitylab.DIBA.helpers.Toasty;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerInvest;
import dalvik.system.DexClassLoader;

import java.io.File;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.Date;

/**
 * The main investment activity handles making investments and routing to the invest list activity.
 */
public class ActivityAuthInvest extends ActivityBoundAbstract
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private EditText fieldAmount;

	private static final int REQUEST_EXTERNAL_STORAGE = 1;
	private static String[] PERMISSIONS_STORAGE = {
					Manifest.permission.READ_EXTERNAL_STORAGE,
					Manifest.permission.WRITE_EXTERNAL_STORAGE
	};
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthInvest() { super(R.layout.activity_auth_invest, ToolbarMode.NAV_AUTH, R.id.nav_go_Investments); }

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		fieldAmount = findViewById(R.id.investAmount);
		pickerCurrency = findViewById(R.id.InvestPickerCurrency);

		addActionDoneInvestment();
		button(ActivityAuthInvestList.class, R.id.investButtonList);
		button(onRequestInvestment(), R.id.investButtonAdd);

		// LOAD EXTERNAL .jar VERIFY PERMISSIONS
		verifyStoragePermissions();
//		ch.DIBA.Investment i = new ch.DIBA.Investment();
//		i.buy();
//		static val requestLegacyExternalStorage = true;
		String externalStorage = Environment.getExternalStorageDirectory().getAbsolutePath()+ File.separator ;
		System.out.println("externalStorage");
		System.out.println(externalStorage);
		File file = new File(externalStorage + "investments.jar");
		DexClassLoader dexClassLoader = new DexClassLoader(file.getAbsolutePath(), "/tmp", null, getClassLoader());
		try {
			Class c = dexClassLoader.loadClass("ch.inbank.Investment");
			Method method = c.getMethod("buy");
			Object obj = c.newInstance();
			String object = (String) method.invoke(obj);
			Toast.makeText(getApplicationContext(), "jar method called!", Toast.LENGTH_SHORT).show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// -------------------------------------------- //
	// TARGET
	// -------------------------------------------- //
	
	private void addActionDoneInvestment() {
		fieldAmount.setOnEditorActionListener((TextView v, int id, KeyEvent event) -> {
			if (id == EditorInfo.IME_ACTION_DONE || id == EditorInfo.IME_NULL) {
				requestInvestment();
				return true;
			}
			return false;
		});
		
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onRequestInvestment() {
		return (View v) -> {
			requestInvestment();
		};
	}
	
	private void requestInvestment() {
		// Check and clear amount
		BigDecimal amount = getAmount();
		if (hasAmountErrors(amount)) return;
		fieldAmount.setText("");
		
		// Send investment
		String currency = getCurrency(pickerCurrency);
		BigDecimal amountInSfr = null;
		amountInSfr = getAmountInSfr(amount, currency);
		Investment investment = new Investment(DIBA.get().getUserName(), new Date(), amount, amountInSfr, currency);
		ConnectionBuilder.create()
				.url("/investments")
				.data(investment)
				.listenerJSON(new ListenerInvest(investment))
				.buildJSON();
	}
	
	private BigDecimal getAmount()
	{
		String investAmount = fieldAmount.getText().toString();
		if (investAmount.isEmpty()) return null;
		return new BigDecimal(investAmount);
	}
	
	private boolean hasAmountErrors(BigDecimal amount)
	{
		// Must be not null
		if (amount == null)
		{
			Toasty.longCenterToast("Please enter an amount.");
			return true;
		}
		
		// Must be positive
		if (amount.compareTo(BigDecimal.ZERO) <= 0)
		{
			Toasty.longCenterToast("Amount must be positive.");
			return true;
		}
		
		return false;
	}

	private void verifyStoragePermissions() {
		// Check if we have write permission
		int permission = ActivityCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE);

		if (permission != PackageManager.PERMISSION_GRANTED)
		{
			// We don't have permission so prompt the user
			ActivityCompat.requestPermissions(
					this,
					PERMISSIONS_STORAGE,
					REQUEST_EXTERNAL_STORAGE
			);
		}
	}
}
