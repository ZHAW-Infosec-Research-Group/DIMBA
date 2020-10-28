package ch.zhaw.securitylab.DIMBA.activity.unauth;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.FragmentDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.helpers.TaskCredentials;
import ch.zhaw.securitylab.DIMBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIMBA.networking.listeners.ListenerRegisterJSON;

/**
 * The sign in fragment lets the user create an account and logs them in. Routes to the main authenticated
 * activity on success.
 */
public class FragmentSignIn extends FragmentDIMBAAbstract {
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public FragmentSignIn(){ super(R.string.title_activity_sign_in, R.layout.fragment_signin);}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View control = super.onCreateView(inflater, container, savedInstanceState);
		if (control == null) return view;
		
		fetchForms(R.id.signEmail, R.id.signPassword);
		buttonTaskAndCancel(R.id.signButtonIn, R.id.signButtonCancel);
		setEditorTask();
		
		return view;
	}
	
	// -------------------------------------------- //
	// ASYNC TASK
	// -------------------------------------------- //
	
	@Override
	protected TaskCredentials getTask()
	{
		return new TaskSignIn();
	}
	
	public class TaskSignIn extends TaskCredentials {
		@Override
		protected Boolean doInBackground(Void... params) {
			DIMBA.get().setUserName(email);
			ConnectionBuilder.create()
					.listenerJSON(new ListenerRegisterJSON(context))
					.data("email", email)
					.data("password", password)
					.url("/register")
					.buildJSON();
			return true;
		}
	}
}
