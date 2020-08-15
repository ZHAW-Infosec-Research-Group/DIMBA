package ch.zhaw.securitylab.DIBA.report;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.Looper;

import androidx.core.app.ActivityCompat;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.ProviderSettings;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.helpers.Toasty;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerKey;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerReport;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * The ReportCollector gathers all the necessary data to form a proper bug report, encrypts and sends/stores it.
 */
public class ReportCollector {
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	private static final int REQUEST_EXTERNAL_STORAGE = 1;
	private static String[] PERMISSIONS_STORAGE =
			{
					Manifest.permission.READ_EXTERNAL_STORAGE,
					Manifest.permission.WRITE_EXTERNAL_STORAGE
			};

	private Gson gson = new GsonBuilder().create();
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private String jsonPayment;
	private String jsonInvestment;
	private String jsonMessages;
	private String settings;
	private String payLoad;
	
	private String key = null;
	public void setKey(String key) { this.key = key; }
	
	// -------------------------------------------- //
	// COLLECT ALL
	// -------------------------------------------- //
	
	public static void collectAndSend(Activity activity) {
		new Thread(() -> {
			Looper.prepare();
			ReportCollector collector = new ReportCollector();
			collector.collectJson();
			collector.collectSettings();
			
			collector.collectKey(activity);
			if (!collector.encrypt(activity)) {
				Toasty.longCenterToast("Key couldn't be retrieved, aborted report.");
				return;
			}
			
			collector.save();
			collector.send(activity);
		}).start();
	}
	
	// -------------------------------------------- //
	// COLLECT
	// -------------------------------------------- //
	
	private void collectJson() {
		jsonPayment    = gson.toJson(DIBA.get().getPaymentDao().getAll());
		jsonInvestment = gson.toJson(DIBA.get().getInvestmentDao().getAll());
		jsonMessages   = gson.toJson(DIBA.get().getMessageDB().getAll());
	}
	
	private void collectSettings() {
		settings = "{";
		for (String s : ProviderSettings.getContent()) {
			settings += ";" + s;
		}
		settings += "}";
	}
	
	private void collectKey(Activity activity) {
		ConnectionBuilder.create()
			.url("/key")
			.listenerJSON(new ListenerKey(this))
			.buildJSON();
	}
	
	private boolean encrypt(Activity activity) {
		InCipher cipher = new InCipher(activity.getString(R.string.alphabet));
		
		int counter = 0;
		while (key == null) {
			try {
				Thread.sleep(1000L);
				counter++;
			} catch (InterruptedException e) {
				/* nothing special */
			}
			
			if (counter >= 5) return false;
		}
		
		payLoad = cipher.encrypt(jsonPayment + jsonInvestment + jsonMessages + settings, key);
		
		return true;
	}
	
	// -------------------------------------------- //
	// SAVE & SEND
	// -------------------------------------------- //
	
	private void save() {

		File sdcard = Environment.getExternalStorageDirectory();
		File report = new File(sdcard, "DIBA-report.txt");

		try {
			PrintWriter pw = new PrintWriter(new FileOutputStream(report));
			pw.write(payLoad);
			pw.flush();
			pw.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private void send(Activity activity) {
		ConnectionBuilder.create()
			.url("/report")
			.dataRaw("payLoad", payLoad)
			.listenerJSON(new ListenerReport())
			.buildJSON();
	}

	public static void verifyStoragePermissions(Activity activity) {
		// Check if we have write permission
		int permission = ActivityCompat.checkSelfPermission(activity, Manifest.permission.WRITE_EXTERNAL_STORAGE);

		if (permission != PackageManager.PERMISSION_GRANTED) {
			// We don't have permission so prompt the user
			ActivityCompat.requestPermissions(
					activity,
					PERMISSIONS_STORAGE,
					REQUEST_EXTERNAL_STORAGE
			);
		}
	}
	
}
