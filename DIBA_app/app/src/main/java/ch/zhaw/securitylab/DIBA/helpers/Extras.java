package ch.zhaw.securitylab.DIBA.helpers;

/**
 * Stores all public static values needed in DIBA not further assignable to one class.
 */
public class Extras
{
	// Pay Intent
	public static final String AMOUNT = "auth_pay_amount";
	public static final String TARGET = "auth_pay_target";
	public static final String CURRENCY = "auth_pay_currency";
	public static final String AMOUNT_SFR = "auth_pay_amount_sfr";
	
	// Log tags
	public static final String LOG_TAG = "DIBA";
	
	// Shared preferences
	public static final String SHARED_EMAIL = "login_email";
	public static final String SHARED_PASSWORD = "login_password";
	public static final String SHARED_REMEMBER = "login_remember";
	public static final String SHARED_VIP = "VIP";
	public static final String ROOT_DET_DISABLE = "disable";

	// Fragment
	public static final String FRAGMENT = "credentials_fragment";
	public static final String FRAGMENT_LOGIN = "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin";
	public static final String FRAGMENT_SIGNIN = "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentSignIn";
	public static final String FRAGMENT_ROOT_DETECTION = "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentRootDetection";
}
