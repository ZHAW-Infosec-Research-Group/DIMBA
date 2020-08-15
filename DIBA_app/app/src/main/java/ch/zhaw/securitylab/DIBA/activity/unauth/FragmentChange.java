package ch.zhaw.securitylab.DIBA.activity.unauth;


import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.FragmentDIBAAbstract;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.helpers.TaskCredentials;

/**
 * An unfinished fragment, a placeholder for a fragment that would implement password changes eventually.
 */
public class FragmentChange extends FragmentDIBAAbstract {

	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public FragmentChange(){ super(R.string.title_activity_change, R.layout.fragment_change, true); }
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View control = super.onCreateView(inflater, container, savedInstanceState);
		if (control == null) return view;
		
		button(R.id.changeButtonDefaultOne, ActivityLanding.class);
		button(R.id.changeButtonDefaultTwo, ActivityInfo.class);
		button(R.id.changeButtonDefaultThree, ActivityMetasettings.class);
		button(R.id.changeButtonDefaultFour, onDoDefaultFour);
		
		return view;
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onDoDefaultFour = (View view) ->
	{
		startActivity(new Intent(context, ActivityCredentials.class).putExtra(Extras.FRAGMENT, Extras.FRAGMENT_LOGIN));
	};
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	protected TaskCredentials getTask()
	{
		return null;
	}
	
}
