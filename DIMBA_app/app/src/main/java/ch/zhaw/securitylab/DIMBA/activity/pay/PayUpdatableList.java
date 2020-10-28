package ch.zhaw.securitylab.DIMBA.activity.pay;

import android.os.Bundle;
import androidx.annotation.Nullable;
import android.widget.ListAdapter;
import android.widget.ListView;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.ProviderSettings;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIMBA.data.list.ListAdapterFactory;
import ch.zhaw.securitylab.DIMBA.data.payment.Payment;
import ch.zhaw.securitylab.DIMBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIMBA.networking.listeners.ListenerPaymentList;

import java.util.List;

/**
 * An abstraction to handle fetching and updating payment list views.
 */
public abstract class PayUpdatableList extends ActivityDIMBAAbstract
{
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final String[] FROM = new String[] {"recipient", "amount", "currency"};
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public PayUpdatableList(int layoutId, boolean secure)
	{
		super(layoutId, ToolbarMode.NAV_AUTH, R.id.nav_go_pay, secure);
	}
	
	@Override
	protected void onCreate(@Nullable Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		
		if (!ProviderSettings.isAutoUpdate()) {
			new Thread(() ->
			{
				updateListView(getPayments(DIMBA.get().getUserName()));
			}).start();
		}
	}
	
	// -------------------------------------------- //
	// LIST
	// -------------------------------------------- //
	
	public void updateListView(final List<Payment> payments)
	{
		runOnUiThread(() -> {
			ListView listView = findViewById(R.id.payListView);
			ListAdapter listAdapter = ListAdapterFactory.get().getAdapterInvest(context, payments, FROM);
			listView.setAdapter(listAdapter);
		});
	}
	
	public List<Payment> getPayments(String name) {
		return DIMBA.get().getPaymentDao().loadByOwner(name);
	}
	
	@Override
	protected void autoUpdate() {
		ConnectionBuilder.create()
			.url("/payments")
			.listenerJSON(new ListenerPaymentList(this))
			.buildJSON();
	}
	
}
