package ch.zhaw.securitylab.DIMBA.helpers;

import android.os.AsyncTask;

/**
 * Implements unused void methods of the AsyncTask and stores email + password for a task.
 */
public abstract class TaskCredentials extends AsyncTask<Void, Void, Boolean>
{
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	protected String email;
	public void setEmail(String email) { this.email = email; }
	
	protected String password;
	public void setPassword(String password) { this.password = password; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	protected TaskCredentials() { }
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	protected void onPostExecute(final Boolean success) {	}
	
	@Override
	protected void onCancelled() {	}
	
}
