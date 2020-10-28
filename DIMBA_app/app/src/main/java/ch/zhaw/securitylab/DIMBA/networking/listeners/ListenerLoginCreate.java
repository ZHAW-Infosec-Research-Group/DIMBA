package ch.zhaw.securitylab.DIMBA.networking.listeners;

import android.app.TaskStackBuilder;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import android.util.Log;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;
import ch.zhaw.securitylab.DIMBA.networking.InResponse;
import com.android.volley.VolleyError;
import com.auth0.android.jwt.DecodeException;
import com.auth0.android.jwt.JWT;

public class ListenerLoginCreate extends ListenerAbstract {
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private DIMBA DIMBA = ch.zhaw.securitylab.DIMBA.DIMBA.get();
	private AppCompatActivity activity;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public ListenerLoginCreate(AppCompatActivity activity)
	{
		this.activity = activity;
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public void onErrorResponse(VolleyError error)
	{
		super.onErrorResponse(error);
		DIMBA.setUserName(null);
		DIMBA.setJwt(null);
	}
	
	@Override
	public void onResponse(InResponse response)
	{
		super.onResponse(response);
		String jwtToken = response.getMessage();
		
		// Response is jwt token
		try
		{
			JWT jwt = new JWT(jwtToken);
			// TODO: Fetch claim user?
		}
		catch (DecodeException e)
		{
			throw new RuntimeException(e);
		}
		
		// Perform the user login attempt.
		Log.i(Extras.LOG_TAG, "Login successful.");
		Log.i(Extras.LOG_TAG, "JWT: " + jwtToken);

		DIMBA.setJwt(jwtToken);
		
		Intent intent = new Intent(activity, ActivityAuthMain.class);
		TaskStackBuilder.create(activity)
			.addNextIntent(intent)
			.startActivities();
	}
	
	@Override
	protected String getRequestResource()
	{
		return "login in / creating an account";
	}
	
	@Override
	protected String requestMake()
	{
		return "";
	}
	
}
