package ch.zhaw.securitylab.DIMBA.activity.unauth;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;

import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import ch.zhaw.securitylab.DIMBA.R;


public class FragmentRootDetection extends DialogFragment {


    private Button continueB;

    public FragmentRootDetection(){}


//    public static FragmentRootDetection newInstance(String param1, String param2) {
    public static FragmentRootDetection newInstance(boolean rooted) {
        FragmentRootDetection fragment = new FragmentRootDetection();
        Bundle args = new Bundle();
        String r = rooted ? "Rooted Device Detected!" : "Device Okay!";
        String m = rooted ? "DIMBA will automatically uninstall for security reason.\n You can disable this message in the meta settings." : "Trusted Device, no root found.";
        args.putString("ROOTED", r);;
        args.putString("MESSAGE", m);;
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        String title = getArguments().getString("ROOTED");
        String message = getArguments().getString("MESSAGE");
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(getActivity());
        alertDialogBuilder.setTitle(title);
        alertDialogBuilder.setMessage(message);
        alertDialogBuilder.setPositiveButton("Continue",  new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                // on success
            }
        });
//        alertDialogBuilder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
//            @Override
//            public void onClick(DialogInterface dialog, int which) {
//                if (dialog != null) {
//                    dialog.dismiss();
//                }
//            }
//
//        });
        return alertDialogBuilder.create();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_root_detection, container, false);
    }
}
