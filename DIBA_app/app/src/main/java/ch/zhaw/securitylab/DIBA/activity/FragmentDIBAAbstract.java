package ch.zhaw.securitylab.DIBA.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.TextView;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain;
import ch.zhaw.securitylab.DIBA.activity.unauth.ActivityLanding;
import ch.zhaw.securitylab.DIBA.helpers.HelperCredentials;
import ch.zhaw.securitylab.DIBA.helpers.TaskCredentials;

/**
 * Parent class of all Fragments in DIBA. offers convenience methods for buttons and credentials.
 */
public abstract class FragmentDIBAAbstract extends Fragment {

	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private int titleId;
	private int layoutId;
	
	protected View view;
	protected ActivityDIBAAbstract context;
	
	protected EditText formEmail;
	protected EditText formPassword;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	protected FragmentDIBAAbstract(int titleId, int layoutId)
	{
		this(titleId, layoutId, false);
	}
	
	protected FragmentDIBAAbstract(int titleId, int layoutId, boolean menu)
	{
		this.titleId = titleId;
		this.layoutId = layoutId;
		this.setHasOptionsMenu(menu);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		view = inflater.inflate(layoutId, container, false);
		context = (ActivityDIBAAbstract) getActivity();
		if (context == null) return null;
		
		context.setTitle(titleId);
		
		return view;
	}
	
	// -------------------------------------------- //
	// DELEGATE > BUTTON
	// -------------------------------------------- //
	
	protected void button(int id, OnClickListener onClickListener) {
		view.findViewById(id).setOnClickListener(onClickListener);
	}
	
	protected void button(int id, Class<?> clazz)
	{
		button(id, (View v) -> startActivity(new Intent(context, clazz)));
	}
	
	protected void buttonTaskAndCancel(int idAttemptTask, int idCancel)
	{
		button(idAttemptTask, onAttemptTask());
		button(idCancel, ActivityLanding.class);
	}
	
	// -------------------------------------------- //
	// DELEGATE > CREDENTIALS
	// -------------------------------------------- //
	
	protected void fetchForms(int idEmail, int idPassword)
	{
		formEmail = view.findViewById(idEmail);
		formPassword = view.findViewById(idPassword);
	}
	
	protected void setEditorTask()
	{
		formEmail.setOnEditorActionListener(onActionRequestFocus(formPassword));
		formPassword.setOnEditorActionListener(onActionAttemptTask());
	}
	
	@NonNull
	private TextView.OnEditorActionListener onActionAttemptTask()
	{
		return (TextView textView, int id, KeyEvent keyEvent) -> isDone(id) && attemptTask();
	}
	
	@NonNull
	private TextView.OnEditorActionListener onActionRequestFocus(View view)
	{
		return (TextView textView, int id, KeyEvent keyEvent) -> isDone(id) && view.requestFocus();
	}
	
	private static boolean isDone(int id) { return id == EditorInfo.IME_ACTION_DONE || id == EditorInfo.IME_NULL; }
	
	private OnClickListener onAttemptTask() { return (View view) -> attemptTask(); }
	
	private boolean attemptTask()
	{
		HelperCredentials helperCredentials = new HelperCredentials(formEmail, formPassword, getTask());
		helperCredentials.attemptTask();
		return true;
	}
	
	protected abstract TaskCredentials getTask();
	
	// -------------------------------------------- //
	// DELEGATE > MENU
	// -------------------------------------------- //
	
	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater)
	{
		inflater.inflate(R.menu.menu_info, menu);
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item)
	{
		int id = item.getItemId();
		switch (id)
		{
			case R.id.action_info:
				startActivity(new Intent(context, ActivityAuthMain.class));
				break;
			default:
				return super.onOptionsItemSelected(item);
		}
		
		return true;
	}
	
}
