package ch.zhaw.securitylab.DIMBA.activity;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.navigation.NavigationView;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View.OnClickListener;
import android.view.WindowManager;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.ProviderSettings;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.helpers.Buttons;
import ch.zhaw.securitylab.DIMBA.helpers.Toasty;
import ch.zhaw.securitylab.DIMBA.navigation.InNavigation;
import ch.zhaw.securitylab.DIMBA.navigation.NavigationAuth;
import ch.zhaw.securitylab.DIMBA.navigation.NavigationUnAuth;

/**
 * The parent activity to all activities. It offers automatic assignment of toolbars and navigation drawers,
 * easy button creation and option menu support through reflection.
 */
public abstract class ActivityDIMBAAbstract extends AppCompatActivity {
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private Buttons buttons;
	private Toolbar toolbar;
	private DrawerLayout drawer;
	private NavigationView navigation;
	
	private int viewId = 0;
	private ToolbarMode toolbarMode = ToolbarMode.NONE;
	private int toolbarFocus = 0;
	private boolean screenshotSecure;
	
	protected ActivityDIMBAAbstract context;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityDIMBAAbstract(int viewId, ToolbarMode toolbarMode)
	{
		this(viewId, toolbarMode, 0);
	}
	
	public ActivityDIMBAAbstract(int viewId, ToolbarMode toolbarMode, int toolbarFocus) {
		this(viewId, toolbarMode, toolbarFocus, true);
	}
	
	public ActivityDIMBAAbstract(int viewId, ToolbarMode toolbarMode, int toolbarFocus, boolean screenshotSecure) {
		this.viewId = viewId;
		this.toolbarMode = toolbarMode;
		this.toolbarFocus = toolbarFocus;
		this.screenshotSecure = screenshotSecure;
	}
	
	@Override
	protected void onCreate(@Nullable Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		if (screenshotSecure) getWindow().addFlags(WindowManager.LayoutParams.FLAG_SECURE);
		if (viewId != 0) setContentView(viewId);
		initToolbar();
		if (ProviderSettings.isAutoUpdate()) autoUpdate();
		buttons = new Buttons(this);
		context = this;
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	protected void onPostResume() {
		super.onPostResume();
		if (toolbarFocus != 0) navigation.setCheckedItem(this.toolbarFocus);
	}
	
	private void initToolbar() {
		if (toolbarMode == ToolbarMode.NONE) return;
		
		toolbar = setupToolbar();
		if (toolbarMode == ToolbarMode.TOOLBAR) return;
		
		InNavigation navigation;
		switch (toolbarMode) {
			case NAV_AUTH:
				navigation = new NavigationAuth(this);
				break;
			case NAV_UN_AUTH:
				navigation = new NavigationUnAuth(this);
				break;
			default:
				return;
		}
		
		// Security Fallback
		if (DIMBA.get().getJwt() == null) navigation = new NavigationUnAuth(this);
		
		initDrawer();
		initNavigation(navigation);
	}
	
	// -------------------------------------------- //
	// DELEGATE > BUTTONS
	// -------------------------------------------- //
	
	public void button(final Class<?> clazz, @NonNull int... ids) {
		for (int id : ids) {
			buttons.initButton(id, clazz);
		}
	}
	
	public void button(OnClickListener onClickListener, @NonNull int... ids) {
		for (int id : ids) {
			buttons.initButton(id, onClickListener);
		}
	}
	
	// -------------------------------------------- //
	// DELEGATE > TOOLBAR
	// -------------------------------------------- //
	
	private Toolbar setupToolbar() {
		Toolbar toolbar = this.findViewById(R.id.toolbar);
		sayLoggedInAs(toolbar);
		setSupportActionBar(toolbar);
		return toolbar;
	}
	
	private void sayLoggedInAs(Toolbar toolbar) {
		String name = DIMBA.get().getUserName();
		if (name != null) {
			toolbar.setSubtitle("Logged in as " + name);
		}
	}
	
	// -------------------------------------------- //
	// DELEGATE > DRAWER
	// -------------------------------------------- //
	// Should only be called by classes who have a drawer layout attached to it
	
	private void initDrawer() {
		drawer = findViewById(R.id.drawer_layout);
		ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
			this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
		drawer.addDrawerListener(toggle);
		toggle.syncState();
	}
	
	private void initNavigation(InNavigation inNavigation) {
		navigation = findViewById(R.id.nav_view);
		navigation.inflateMenu(inNavigation.getLayoutId());
		navigation.inflateHeaderView(R.layout.nav_header_main);
		navigation.setNavigationItemSelectedListener(inNavigation);
		if (toolbarFocus != 0) navigation.setCheckedItem(this.toolbarFocus);
	}
	
	protected void setNavigationActive(int id)
	{
		navigation.setCheckedItem(id);
	}
	
	@Override
	public void onBackPressed() {
		if (drawer != null && drawer.isDrawerOpen(GravityCompat.START)) {
			drawer.closeDrawer(GravityCompat.START);
		} else {
			super.onBackPressed();
		}
	}
	
	// -------------------------------------------- //
	// CONVENIENCE > METHOD OVERRIDEN
	// -------------------------------------------- //
	
	private boolean isMethodOverriden(String method) {
		Class<?> clazz = this.getClass();
		try {
			if (method.equals("bug") && clazz.getName().equals("ch.zhaw.securitylab.DIMBA.activity.auth.ActivityAuthMain")) {
				return true;
			}
			return clazz.getDeclaredMethod(method).getDeclaringClass() == clazz;
		} catch (Exception e) {
			return false;
		}
	}
	
	// -------------------------------------------- //
	// DELEGATE > AUTO UPDATE
	// -------------------------------------------- //
	
	private boolean isAutoUpdate()
	{
		return isMethodOverriden("autoUpdate");
	}
	
	protected void autoUpdate() {
	
	}
	
	protected String getUpdateText() {
		return "";
	}
	
	// -------------------------------------------- //
	// DELEGATE > HAS INFO
	// -------------------------------------------- //
	
	private boolean hasInfo() {
		return isMethodOverriden("info");
	}
	
	protected void info() {}
	
	// -------------------------------------------- //
	// DELEGATE > HAS BUG
	// -------------------------------------------- //
	
	private boolean hasBug() {
//		return true;
		return isMethodOverriden("bug");
	}

	protected void bug() {}
	
	// -------------------------------------------- //
	// DELEGATE > MENU
	// -------------------------------------------- //
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		if (this.isAutoUpdate()) getMenuInflater().inflate(R.menu.menu_update_list, menu);
		if (this.hasInfo()) getMenuInflater().inflate(R.menu.menu_info, menu);
		if (this.hasBug()) getMenuInflater().inflate(R.menu.menu_bug, menu);
		return true;
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {

		if (!this.isAutoUpdate() && !this.hasInfo() && !this.hasBug()) return super.onOptionsItemSelected(item);
		switch (item.getItemId()) {
			case R.id.action_update:
				autoUpdate();
				if (!getUpdateText().isEmpty()) Toasty.longCenterToast(getUpdateText());
				return true;
			
			case R.id.action_info:
				info();
				return true;
			
			case R.id.action_bug:
				bug();
				return true;
				
			default:
				return super.onOptionsItemSelected(item);
			
		}
	}
}
