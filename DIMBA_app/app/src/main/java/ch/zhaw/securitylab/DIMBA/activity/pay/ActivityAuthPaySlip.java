package ch.zhaw.securitylab.DIMBA.activity.pay;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Environment;
import androidx.core.app.ActivityCompat;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;
import ch.zhaw.securitylab.DIMBA.helpers.Toasty;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

/**
 * The payslip activity can read, safe and display a payslip. It also routes to the pay make activity.
 */
public class ActivityAuthPaySlip extends ActivityDIMBAAbstract {
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final int REQUEST_EXTERNAL_STORAGE = 1;
	private static String[] PERMISSIONS_STORAGE =
	{
		Manifest.permission.READ_EXTERNAL_STORAGE,
		Manifest.permission.WRITE_EXTERNAL_STORAGE
	};
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthPaySlip() { super(R.layout.activity_auth_pay_slip, ToolbarMode.NAV_AUTH, R.id.nav_go_pay); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		
		button(onPayslipReadUser(), R.id.paySlipButtonLoad);
		button(onPayslipSaveUser(), R.id.paySlipButtonSave);
		button(onPayslipReadDefault(), R.id.paySlipButtonSample);
		button(ActivityAuthPayMake.class, R.id.paySlipButtonTransfer);
		
		verifyStoragePermissions();
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onPayslipReadUser()
	{
		return (View v) ->
		{
			String fileName = fetchFileName(R.id.payFile);
			if (fileName == null) return;
			readPayslipUser(fileName);
		};
	}
	
	private OnClickListener onPayslipSaveUser()
	{
		return (View v) ->
		{
			String fileName = fetchFileName(R.id.paySave);
			if (fileName == null) return;
			saveFile(fileName);
		};
	}
	
	private OnClickListener onPayslipReadDefault()
	{
		return (View v) ->
		{
			InputStream stream = DIMBA.get().getResources().openRawResource(R.raw.payslip_default);
			BufferedReader br = new BufferedReader(new InputStreamReader(stream));
			readFile(br);
		};
	}
	
	@Override
	protected void info()
	{
		startActivity(new Intent(this, ActivityAuthPaySlipInfo.class));
	}
	
	private String fetchFileName(int id) {
		TextView text = findViewById(id);
		String fileName = text.getText().toString();
		if (fileName.isEmpty()) {
			Toast.makeText(this, "Enter a fileName.", Toast.LENGTH_SHORT).show();
			fileName = null;
		}
		
		return fileName;
	}
	
	private void readPayslipUser(String fileName) {
		File sdcard = Environment.getExternalStorageDirectory();
		File file = new File(sdcard, fileName);
		Log.i(Extras.LOG_TAG, "abs: " + file.getAbsolutePath());
		
		String canLog = null;
		try {
			canLog = file.getCanonicalPath();
		} catch (IOException ex) {
			canLog = ex.getMessage();
		}
		Log.i(Extras.LOG_TAG, "can: " + canLog);
		
		if (file.exists()) {
			Log.i(Extras.LOG_TAG, "fil: exists");
		}
		
		try {
			boolean worked = readFile(new BufferedReader(new FileReader(file)));
			if (worked) ((TextView) findViewById(R.id.payFile)).setText("");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private boolean readFile(BufferedReader br) {
		// Read text from file
		StringBuilder text = new StringBuilder();
		
		try {
			String line;
			
			while ((line = br.readLine()) != null) {
				text.append(line);
				text.append('\n');
			}
			br.close();
		} catch (IOException e) {
			Toast.makeText(this, "The file couldn't be opened.", Toast.LENGTH_LONG).show();
			e.printStackTrace();
			return false;
		}
		
		TextView paySlip = findViewById(R.id.paySlipText);
		String paySlipText = text.toString();
		paySlip.setText(paySlipText);
		paySlip.setVisibility(View.VISIBLE);
		DIMBA.get().setPaySlip(paySlipText);
		
		String tText = "Successfully loaded the file.";
		Toast toast = Toast.makeText(this, tText, Toast.LENGTH_LONG);
		toast.setGravity(Gravity.CENTER, 0, -80);
		toast.show();
		return true;
	}
	
	private void saveFile(String fileName) {
		TextView paySlip = findViewById(R.id.paySlipText);
		String text = paySlip.getText().toString();
		
		File sdcard = Environment.getExternalStorageDirectory();
		File file = new File(sdcard, fileName);
		
		try
		{
			PrintWriter pw = new PrintWriter(new FileOutputStream(file));
			pw.write(text);
			pw.flush();
			pw.close();
			
			Toasty.longCenterToast("Successfully saved the payment slip with name " + fileName + ".");
			
			paySlip.setText("");
		}
		catch (FileNotFoundException e)
		{
			e.printStackTrace();
		}
	}
	
	// -------------------------------------------- //
	// PERMISSIONS
	// -------------------------------------------- //
	
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
