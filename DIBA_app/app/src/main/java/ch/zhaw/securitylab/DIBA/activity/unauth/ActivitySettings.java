package ch.zhaw.securitylab.DIBA.activity.unauth;

import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;

import ch.zhaw.securitylab.DIBA.ProviderSettings;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.helpers.Extras;

import static ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin.PREFERENCE_MODE;
import static ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin.PREFERENCE_NAME;

/**
 * The settings activity manages all settings of the app, that the actual user of the app should have control over.
 */
public class ActivitySettings extends ActivityDIBAAbstract {

	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private CheckBox fieldRemember;
	private CheckBox fieldAuto;
	private CheckBox fieldRootDetection;
	private EditText fieldPackage;
	private EditText fieldClass;

	private SharedPreferences loginPreferences;
	private SharedPreferences rootDetPreferences;

	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivitySettings() { super(R.layout.activity_settings, ToolbarMode.NAV_AUTH, R.id.nav_go_settings); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		
		fieldRemember      = findViewById(R.id.settingsRememberCheck);
		fieldAuto          = findViewById(R.id.settingsAutoUpdate);
		fieldPackage       = findViewById(R.id.settingsDebugPackage);
		fieldRootDetection = findViewById(R.id.settingsRootDetectionBox);
		fieldClass         = findViewById(R.id.settingsDebugClass);

		loginPreferences   = getSharedPreferences(PREFERENCE_NAME, PREFERENCE_MODE);
		rootDetPreferences = getSharedPreferences("rootDetPreferences", PREFERENCE_MODE);

		button(onRememberMe(),     R.id.settingsRememberCheck);
		button(onAutoUpdate(),     R.id.settingsAutoUpdate);
		button(onDisableRootDet(), R.id.settingsRootDetectionBox);
		button(onResetDefault(),   R.id.settingsResetDefault);

		initFields();
		initTextListeners();
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //


	private OnClickListener onRememberMe()  {
		return (View v) -> {
			Editor editor = loginPreferences.edit();
			editor.putBoolean(Extras.SHARED_REMEMBER, fieldRemember.isChecked());
			editor.apply();
		};
	}

	private OnClickListener onAutoUpdate() {
		return (View v) -> {
			ContentValues values = new ContentValues();
			values.put(ProviderSettings.FIELD_AUTO_UPDATE, fieldAuto.isChecked() ? 1 : 0);

			int rows = getContentResolver().update(ProviderSettings.CONTENT_URI, values, "_id=1", null);
		};
	}

	private OnClickListener onDisableRootDet()
	{
		return (View v) ->
		{
			Editor editor = rootDetPreferences.edit();
			editor.putBoolean(Extras.ROOT_DET_DISABLE, fieldRootDetection.isChecked());
			editor.apply();
		};
	}
	
	private OnClickListener onResetDefault() {
		return (View v) -> {
			// Defaults
			String defaultPackage = "ch.zhaw.securitylab.DIBA";
			String defaultClass = "ch.zhaw.securitylab.DIBA.activity.pay.ActivityAuthPayAccept";
			int defaultAutoUpdate = 0;
			
			// Set text fields
			fieldPackage.setText(defaultPackage);
			fieldClass.setText(defaultClass);
			
			// Settings DB
			ContentValues values = new ContentValues();
			values.put(ProviderSettings.FIELD_PACKAGE, defaultPackage);
			values.put(ProviderSettings.FIELD_CLASS, defaultClass);
			values.put(ProviderSettings.FIELD_AUTO_UPDATE, defaultAutoUpdate);
			
			int rows = getContentResolver().update(ProviderSettings.CONTENT_URI, values, "_id=1", null);
			
			// Login preferences
			Editor editor = loginPreferences.edit();
			editor.putBoolean(Extras.SHARED_REMEMBER, true);
			editor.apply();

			// Root Detection preferences
			editor = rootDetPreferences.edit();
			editor.putBoolean(Extras.ROOT_DET_DISABLE, false);
			editor.apply();
		};
	}
	
	// -------------------------------------------- //
	// INITIALIZE
	// -------------------------------------------- //
	
	private void initFields() {
		String[] content = ProviderSettings.getContent();
		String packageName = content[0];
		String className = content[1];
		String autoUpdate = content[2];
		
		// Set Texts
		fieldPackage.setText(packageName);
		fieldClass.setText(className);
		
		// Set Checkboxes
		fieldRemember.setChecked(loginPreferences.getBoolean(Extras.SHARED_REMEMBER, false));
		fieldRootDetection.setChecked(rootDetPreferences.getBoolean(Extras.ROOT_DET_DISABLE, false));
		fieldAuto.setChecked("1".equals(autoUpdate));
	}
	
	private void initTextListeners()
	{
		addTextWatcher(fieldPackage, ProviderSettings.FIELD_PACKAGE);
		addTextWatcher(fieldClass, ProviderSettings.FIELD_CLASS);
	}
	
	private void addTextWatcher(EditText editText, String key)
	{
		editText.addTextChangedListener(createTextWatcher(key, editText));
	}
	
	private TextWatcher createTextWatcher(final String field, final EditText editText)  {
		return new TextWatcher() {
			@Override
			public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
			
			@Override
			public void onTextChanged(CharSequence s, int start, int before, int count)
			{
				ContentValues values = new ContentValues();
				values.put(field, editText.getText().toString());
				
				int rows = getContentResolver().update(ProviderSettings.CONTENT_URI, values, "_id=1", null);
			}
			
			@Override
			public void afterTextChanged(Editable s) { }
		};
	}
	
}
