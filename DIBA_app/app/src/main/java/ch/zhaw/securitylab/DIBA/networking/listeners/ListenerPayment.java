package ch.zhaw.securitylab.DIBA.networking.listeners;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.widget.Toast;
import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.pay.ActivityAuthPay;
import ch.zhaw.securitylab.DIBA.data.payment.Payment;

import org.json.JSONException;
import org.json.JSONObject;

public class ListenerPayment extends ListenerAbstractJSON {
	
	private Payment payment;
	private ActivityDIBAAbstract activity;

	public ListenerPayment(Payment payment, ActivityDIBAAbstract activity)
	{
		this.payment = payment;
		this.activity = activity;
	}
	
	@Override
	public void onResponse(JSONObject response)
	{
		super.onResponse(response);
		String status = null;
		try {
			status = response.getString("string");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		if (status.equals("payment worked")) {
			// Make Server contact
			Toast.makeText(DIBA.get(), "Sending " + payment.getAmount() + " to " + payment.getTarget(), Toast.LENGTH_LONG).show();
			DIBA.get().setPaySlip(null);
			new Thread(() -> {
				DIBA.get().getPaymentDao().insertAll(payment);
			}).start();

			if (activity != null) {
				Class clazz = ActivityAuthPay.class;
				TaskStackBuilder.create(activity)
						.addParentStack(clazz)
						.addNextIntent(new Intent(activity, clazz))
						.startActivities();
			}
		} else {
			return;
		}
	}
	
	@Override
	protected String getRequestResource() {
		return "a payment";
	}
	
}
