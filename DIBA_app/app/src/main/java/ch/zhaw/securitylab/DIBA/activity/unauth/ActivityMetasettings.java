package ch.zhaw.securitylab.DIBA.activity.unauth;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;

import java.io.IOException;
import java.util.Scanner;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.data.metasettings.Difficulty;
import ch.zhaw.securitylab.DIBA.data.metasettings.Metasettings;
import ch.zhaw.securitylab.DIBA.data.metasettings.MetasettingsDao;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.helpers.Toasty;

import static ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin.PREFERENCE_MODE;

/**
 * The metasettings activity manages the ip, difficulty and timeout settings of the app.
 * This activity is not supposed to be attacked.
 */
public class ActivityMetasettings extends ActivityDIBAAbstract {

	private EditText fieldIp;
	private Spinner spinnerDifficulty;
	private EditText timeout;
	private CheckBox fieldRootDetection;
	private SharedPreferences rootDetPreferences;


	public ActivityMetasettings() { super(R.layout.activity_metasettings, ToolbarMode.NAV_AUTH, R.id.nav_go_meta); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		fieldIp = findViewById(R.id.metasettingsIp);
		spinnerDifficulty = findViewById(R.id.metasettingsSpinnerDifficulty);
		timeout = findViewById(R.id.metasettingsTimeout);
		fieldRootDetection = findViewById(R.id.settingsRootDetectionBox);
		rootDetPreferences = getSharedPreferences("rootDetPreferences", PREFERENCE_MODE);

		button(onSaveMetasettings(), R.id.metasettingsButtonSave);
		button(onResetApp(), R.id.metasettingsButtonReset);
		button(onTestServer(), R.id.metasettingsButtonTest);
		button(onEnableRootDet(), R.id.settingsRootDetectionBox);
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		initializeFields();
	}

	private OnClickListener onEnableRootDet() {
		return (View v) -> {
			Editor editor = rootDetPreferences.edit();
			editor.putBoolean(Extras.ROOT_DET_DISABLE, fieldRootDetection.isChecked());
			editor.apply();
		};
	}

	private OnClickListener onTestServer() {
		return (View v) -> {
			// This reads the configured server IP from the settings
			String server = fieldIp.getText().toString(); //getIPAddress();
			System.out.println(server);
			Runtime runtime = Runtime.getRuntime();
			String[] cmd = new String[3];
			cmd[0] = "/bin/sh";
			cmd[1] = "-c";
			String cat = " && cat data/data/ch.zhaw.securitylab.DIBA/shared_prefs/loginPreferences.xml";
			cmd[2] = "ping -c 1 " + server;
			Process proc = null;
			try {
				proc = Runtime.getRuntime().exec(cmd);
			} catch (IOException e) {
				e.printStackTrace();
			}
			Scanner reader = new Scanner(proc.getInputStream());
			String output = "";
			while (reader.hasNextLine()) {
				// Show the result of the command on screen
				String line = reader.nextLine();
				output += line;
				System.out.println(line);
			}
			if (output.matches("100% packet loss")) {
				Toasty.longCenterToast("PING FAILED");
			} else {
				Toasty.longCenterToast("PING SUCCESS.");

			}
		};
	}

	private OnClickListener onSaveMetasettings() {
		return (View v) -> {
			new Thread(() -> {
				MetasettingsDao metasettingsDao = DIBA.get().getMetasettingsDb().metasettingsDao();
				final Metasettings metasettings = metasettingsDao.getSettings();
				metasettings.setDifficulty(spinnerDifficulty.getSelectedItem().toString());
				metasettings.setIp(fieldIp.getText().toString());
				metasettings.setTimeout(Integer.parseInt(timeout.getText().toString()));
				metasettingsDao.update(metasettings);
				DIBA.get().initRequestQueue();
				finish();
			}).start();
		};
	}
	
	private OnClickListener onResetApp() {
		return (View v) -> {
			new Thread(() -> {
				DIBA diba = DIBA.get();
				diba.metaClearInvestments();
				diba.metaClearMessages();
				diba.metaClearMetasettings();
				diba.initMetasettingsDB();
				initializeFields();
				
				SharedPreferences preferences = getSharedPreferences(FragmentLogin.PREFERENCE_NAME, FragmentLogin.PREFERENCE_MODE);
				preferences.edit().clear().apply();
				preferences = PreferenceManager.getDefaultSharedPreferences(DIBA.get());
				preferences.edit().clear().apply();

				// Root Detection preferences
				Editor editor = rootDetPreferences.edit();
				editor.putBoolean(Extras.ROOT_DET_DISABLE, true);
				editor.apply();

				resetCurrencyExchange();
			}).start();
			Toasty.longCenterToast("Successfully reset all resources in the app.");
		};
	}
	
	private void resetCurrencyExchange() {
		String[] currencies = {"SFr", "Eur", "$", "£"};
		String preferenceName = "loginPreferences";
		int preferenceMode = Context.MODE_PRIVATE;
		String alreadyFilled = "already filled";
		Editor editor = getSharedPreferences(preferenceName, preferenceMode).edit();
		editor.putString(currencies[0], "1").putString(currencies[1], "1.5");
		editor.putString(currencies[2], "0.9").putString(currencies[3], "1.75");
		editor.putBoolean(alreadyFilled, true).apply();
	}
	
	@Override
	protected void info()
	{
		startActivity(new Intent(this, ActivityInfo.class));
	}
	
	// -------------------------------------------- //
	// INITIALIZE
	// -------------------------------------------- //
	
	private void initializeFields() {
		new Thread(() -> {
			MetasettingsDao metasettingsDao = DIBA.get().getMetasettingsDb().metasettingsDao();
			final Metasettings metasettings = metasettingsDao.getSettings();
			if (metasettings == null) return;
			
			runOnUiThread(() -> {
				fieldIp.setText(metasettings.getIp());
				ArrayAdapter<Difficulty> spinnerAdapter = new ArrayAdapter<>(ActivityMetasettings.this, R.layout.difficulty_entry);
				spinnerAdapter.addAll(Difficulty.values());
				spinnerDifficulty.setAdapter(spinnerAdapter);
//				spinnerDifficulty.setSelection(metasettings.getDifficulty().ordinal());
				spinnerDifficulty.setSelection(metasettings.getDifficulty() -1);
				spinnerAdapter.notifyDataSetChanged();
				timeout.setText(String.valueOf(metasettings.getTimeout()));

				fieldRootDetection.setChecked(rootDetPreferences.getBoolean(Extras.ROOT_DET_DISABLE, true));
			});
		}).start();
	}
}
