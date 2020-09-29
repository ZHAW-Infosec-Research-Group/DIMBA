package ch.zhaw.securitylab.DIBA.activity.unauth;


import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.FragmentDIBAAbstract;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.helpers.RememberMe;
import ch.zhaw.securitylab.DIBA.helpers.TaskCredentials;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerLoginJSON;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerRegisterJSON;

/**
 * The login fragment handles the login procedure and routes to the main authenticated screen on success.
 */
public class FragmentLogin extends FragmentDIBAAbstract {

	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	protected static final String PREFERENCE_NAME = "loginPreferences";
	@SuppressWarnings("deprecation")
	protected static final int PREFERENCE_MODE = Context.MODE_PRIVATE;
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private CheckBox formRememberMe;
	private SharedPreferences loginPreferences;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public FragmentLogin(){ super(R.string.title_activity_login, R.layout.fragment_login); }
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View control = super.onCreateView(inflater, container, savedInstanceState);
		if (control == null) return view;

		// Find views
		fetchForms(R.id.loginFormEmail, R.id.loginFormPassword);
		formRememberMe = view.findViewById(R.id.loginFormRemember);
		
		buttonTaskAndCancel(R.id.loginFormButton, R.id.loginButtonCancel);
		setEditorTask();
		loginPreferences = context.getSharedPreferences(PREFERENCE_NAME, PREFERENCE_MODE);
		
		// Initialize Remember me checkbox
		formRememberMe.setChecked(loginPreferences.getBoolean(Extras.SHARED_REMEMBER, false));
		
		this.populateAutoComplete();
		
		return view;
	}
	
	// -------------------------------------------- //
	// REMEMBER ME
	// -------------------------------------------- //
	
	private boolean isRememberMe()
	{
		return formRememberMe.isChecked();
	}
	
	private void populateAutoComplete()
	{
		if (!this.isRememberMe()) return;
		
		// Get Shared preferences
		String email    = RememberMe.decrypt(loginPreferences.getString(Extras.SHARED_EMAIL, ""));
		String password = RememberMe.decrypt(loginPreferences.getString(Extras.SHARED_PASSWORD, ""));
		
		// Populate fields
		formEmail.setText(email);
		formPassword.setText(password);
	}
	
	private void saveRememberData(String email, String password) {
		boolean remember = isRememberMe();
		
		// Get shared preferences editor
		Editor editor = loginPreferences.edit();
		editor.putBoolean(Extras.SHARED_REMEMBER, remember);
		
		if (remember) {
			// Save email and password
			editor.putString(Extras.SHARED_EMAIL, RememberMe.encrypt(email));
			editor.putString(Extras.SHARED_PASSWORD, RememberMe.encrypt(password));
		}
		editor.apply();
	}
	
	// -------------------------------------------- //
	// ASYNC TASK
	// -------------------------------------------- //
	
	@Override
	protected TaskCredentials getTask()
	{
		return new TaskLogin();
	}
	
	public class TaskLogin extends TaskCredentials {
		@Override
		protected Boolean doInBackground(Void... params) {
			DIBA.get().setUserName(email);

			ConnectionBuilder.create()
					.listenerJSON(new ListenerLoginJSON(context))
					.data("email", email)
					.data("password", password)
					.url("/login")
					.buildJSON();
			
			return true;
		}
		
		@Override
		protected void onPostExecute(final Boolean success) {
			if (success) {
				saveRememberData(email, password);
			} else {
				formPassword.setError(getString(R.string.error_incorrect_password));
				formPassword.requestFocus();
			}
		}
	}
	
}
