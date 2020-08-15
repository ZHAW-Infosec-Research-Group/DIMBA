package ch.zhaw.securitylab.DIBA.activity;

/**
 * Represents, how or if the toolbar should be used in an activity
 */
public enum ToolbarMode
{
	// -------------------------------------------- //
	// ENUM
	// -------------------------------------------- //
	
	NONE, // If no toolbar should be present
	TOOLBAR, // If a toolbar should be present
	NAV_UN_AUTH, // The toolbar having an un-authenticated navigation
	NAV_AUTH // The toolbar (usually) has an authenticated navigation
	; // END OF ENUM
	
}
