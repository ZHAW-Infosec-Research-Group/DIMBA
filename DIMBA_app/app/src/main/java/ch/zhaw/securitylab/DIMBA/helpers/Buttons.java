package ch.zhaw.securitylab.DIMBA.helpers;

import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;

/**
 * Can initialize buttons upon given id and listener/class.
 */
public class Buttons
{
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	private AppCompatActivity activity;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public Buttons(AppCompatActivity activity)
	{
		this.activity = activity;
	}
	
	// -------------------------------------------- //
	// INIT BUTTON
	// -------------------------------------------- //
	
	public void initButton(int id, OnClickListener onClickListener)
	{
		View button = activity.findViewById(id);
		button.setOnClickListener(onClickListener);
	}
	
	public void initButton(int id, final Class<?> clazz)
	{
		initButton(id, startIntent(clazz));
	}
	
	// -------------------------------------------- //
	// INTENT
	// -------------------------------------------- //
	
	private OnClickListener startIntent(final Class<?> clazz)
	{
		return (View v) ->
		{
			Intent intent = new Intent(activity, clazz);
			activity.startActivity(intent);
		};
	}
	
}
