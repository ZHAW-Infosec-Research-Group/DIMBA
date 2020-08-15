package ch.zhaw.securitylab.DIBA.helpers;

import android.view.Gravity;
import android.widget.Toast;
import ch.zhaw.securitylab.DIBA.DIBA;

/**
 * A static helper to make toasty toasts.
 */
public class Toasty
{
	public static void longCenterToast(String message)
	{
		Toast toast = Toast.makeText(DIBA.get(), message, Toast.LENGTH_LONG);
		toast.setGravity(Gravity.CENTER, 0, 0);
		toast.show();
	}
}
