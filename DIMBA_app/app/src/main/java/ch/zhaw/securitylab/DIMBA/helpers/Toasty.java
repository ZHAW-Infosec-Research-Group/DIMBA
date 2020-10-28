package ch.zhaw.securitylab.DIMBA.helpers;

import android.view.Gravity;
import android.widget.Toast;
import ch.zhaw.securitylab.DIMBA.DIMBA;

/**
 * A static helper to make toasty toasts.
 */
public class Toasty
{
	public static void longCenterToast(String message)
	{
		Toast toast = Toast.makeText(DIMBA.get(), message, Toast.LENGTH_LONG);
		toast.setGravity(Gravity.CENTER, 0, 0);
		toast.show();
	}
}
