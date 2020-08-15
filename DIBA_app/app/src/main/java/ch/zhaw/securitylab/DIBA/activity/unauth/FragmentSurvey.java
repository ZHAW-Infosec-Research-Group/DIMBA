package ch.zhaw.securitylab.DIBA.activity.unauth;

import android.app.Dialog;
import android.app.TaskStackBuilder;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;

import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.auth.ActivitySurvey;

public class FragmentSurvey extends DialogFragment {

    private Button continueB;

    public FragmentSurvey() {}

    public static FragmentSurvey newInstance() {
        FragmentSurvey fragment = new FragmentSurvey();
        Bundle args = new Bundle();
        String m = "Please take part of the survey. Your experience is important to us.";
        args.putString("MESSAGE", m);;
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        String message = getArguments().getString("MESSAGE");
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(getActivity());
        alertDialogBuilder.setTitle("DIBA Survey");
        alertDialogBuilder.setMessage(message);
        alertDialogBuilder.setPositiveButton("Start",  new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                // on success
            Intent intent = new Intent(getActivity(), ActivitySurvey.class);
            TaskStackBuilder.create(getActivity())
                    .addNextIntent(intent)
                    .startActivities();            }
        });
        alertDialogBuilder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (dialog != null) {
                    dialog.dismiss();
                }
            }

        });
        return alertDialogBuilder.create();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_survey, container, false);
    }
}
