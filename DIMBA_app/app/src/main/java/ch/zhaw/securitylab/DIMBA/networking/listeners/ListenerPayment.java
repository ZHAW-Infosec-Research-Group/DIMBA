package ch.zhaw.securitylab.DIMBA.networking.listeners;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.widget.Toast;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.pay.ActivityAuthPay;
import ch.zhaw.securitylab.DIMBA.data.payment.Payment;

import org.json.JSONException;
import org.json.JSONObject;

public class ListenerPayment extends ListenerAbstractJSON {
	
	private Payment payment;
	private ActivityDIMBAAbstract activity;

	public ListenerPayment(Payment payment, ActivityDIMBAAbstract activity)
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
			Toast.makeText(DIMBA.get(), "Sending " + payment.getAmount() + " to " + payment.getTarget(), Toast.LENGTH_LONG).show();
			DIMBA.get().setPaySlip(null);
			new Thread(() -> {
				DIMBA.get().getPaymentDao().insertAll(payment);
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
