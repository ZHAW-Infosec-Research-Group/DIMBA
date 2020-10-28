package ch.zhaw.securitylab.DIMBA.helpers;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;

/**
 * Launches basic validity checks for the credentials upon an attempt to execute its assigned task.
 */
public class HelperCredentials
{
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	private TextView email;
	private TextView password;
	private TaskCredentials taskCredentials;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public HelperCredentials(TextView email, TextView password, TaskCredentials taskCredentials)
	{
		this.email = email;
		this.password = password;
		this.taskCredentials = taskCredentials;
	}
	
	// -------------------------------------------- //
	// TASK
	// -------------------------------------------- //
	
	public void attemptTask()
	{
		if (taskCredentials == null) { return; }
		
		// Reset errors.
		email.setError(null);
		password.setError(null);
		
		// Store values at the time of the credentials attempt.
		String emailText = email.getText().toString();
		String passwordText = password.getText().toString();
		
		// Log credentials
		Log.d(Extras.LOG_TAG, "Email: " + emailText + " Password: " + passwordText);
		
		boolean cancel = false;
		View focusView = null;
		
		// Check for a valid password, if the user entered one.
		if (!TextUtils.isEmpty(passwordText) && !isPasswordValid(passwordText))
		{
			password.setError(DIMBA.get().getString(R.string.error_invalid_password));
			focusView = password;
			cancel = true;
		}
		
		// Check for a valid email address.
		if (TextUtils.isEmpty(emailText))
		{
			email.setError(DIMBA.get().getString(R.string.error_field_required));
			focusView = email;
			cancel = true;
		}
		else if (!isEmailValid(emailText))
		{
			email.setError(DIMBA.get().getString(R.string.error_invalid_email));
			focusView = email;
			cancel = true;
		}
		
		if (cancel)
		{
			// There was an error; don't attempt login and focus the first
			// form field with an error.
			Log.i(Extras.LOG_TAG, "Login failed.");
			focusView.requestFocus();
		}
		else
		{
			taskCredentials.setEmail(emailText);
			taskCredentials.setPassword(passwordText);
			taskCredentials.execute((Void) null);
		}
	}
	
	// -------------------------------------------- //
	// VALIDATION
	// -------------------------------------------- //
	
	private boolean isEmailValid(String email)
	{
		return email.contains("@");
	}
	
	private boolean isPasswordValid(String password)
	{
		return password.length() > 4;
	}
	
}
