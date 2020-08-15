package ch.zhaw.securitylab.DIBA.networking.listeners;

import android.util.Log;
import android.widget.Toast;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.helpers.Extras;

public class ErrorListenerJSON implements Response.ErrorListener {

    @Override
    public void onErrorResponse(VolleyError error) {
        if (error.networkResponse == null) {
            Log.e(Extras.LOG_TAG, error.toString());
        }
        else {
            Log.println(Log.ERROR, Extras.LOG_TAG, "Response in: " + this.getClass().getSimpleName());
            Log.println(Log.ERROR, Extras.LOG_TAG, "StatusCode: " + error.networkResponse.statusCode);
            Log.println(Log.ERROR, Extras.LOG_TAG, "Message: " + getErrorData(error));
        }

        Toast.makeText(DIBA.get(), getErrorToast(), Toast.LENGTH_LONG).show();
    }

    protected static String getErrorData(VolleyError error) {
        if (error.networkResponse == null) return "";
        return new String(error.networkResponse.data);
    }

    // -------------------------------------------- //
    // ERROR TOAST
    // -------------------------------------------- //

    private String getErrorToast() {
        return "Something wrong happened with " + requestMake() +" " + getRequestResource() + "." +
                "\nMake sure you have got an internet connection." +
                "\n(Maybe your Metasettings are not configured yet or the server is not running)";
    }

    protected String requestMake()
    {
        return "requesting";
    }

    protected String getRequestResource()
    {
        return "this resource";
    }
}
