package ch.zhaw.securitylab.DIMBA.activity.invest;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.activity.ActivityDIMBAAbstract;
import ch.zhaw.securitylab.DIMBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIMBA.data.invest.Investment;
import ch.zhaw.securitylab.DIMBA.data.invest.InvestmentDao;
import ch.zhaw.securitylab.DIMBA.data.list.ListAdapterFactory;
import ch.zhaw.securitylab.DIMBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIMBA.networking.listeners.ListenerInvestList;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * The invest list activity displays all investments from the current user and the total in SFr.
 */
public class ActivityAuthInvestList extends ActivityDIMBAAbstract
{
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final String[] FROM = new String[] {"date", "amount", "currency"};
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private List<Investment> investments = new ArrayList<>();
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthInvestList() { super(R.layout.activity_auth_invest_list, ToolbarMode.NAV_AUTH, R.id.nav_go_Investments); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		
		this.populateListView();
	}
	
	// -------------------------------------------- //
	// AUTO UPDATE
	// -------------------------------------------- //
	
	@Override
	protected void autoUpdate() {
		ConnectionBuilder.create()
			.url("/investments")
			.listenerJSON(new ListenerInvestList(this))
			.buildJSON();
		
	}
	
	@Override
	protected String getUpdateText()
	{
		return "Updated Investments.";
	}
	
	// -------------------------------------------- //
	// LIST VIEW
	// -------------------------------------------- //
	
	public void populateListView() {
		runOnUiThread(() -> {
			ListView listInvest = findViewById(R.id.investListInvestments);
			List<Investment> investments = getAllInvestments();
			ListAdapter listAdapter = ListAdapterFactory.get().getAdapterInvest(context, investments, FROM);
			listInvest.setAdapter(listAdapter);
			updateTotal(investments);
		});
	}
	
	@SuppressLint("StaticFieldLeak")
	private List<Investment> getAllInvestments()
	{
		if (!investments.isEmpty()) return investments;
		
		// Create
		new AsyncTask<Void, Void, Void>() {
			@Override
			protected Void doInBackground(Void... voids)
			{
				updateListItems();
				runOnUiThread(() -> {
					populateListView();
				});
				
				return null;
			}
		}.execute();
		
		// Return
		return investments;
	}
	
	public void updateListItems() {
		final String owner = DIMBA.get().getUserName();
		
		InvestmentDao investmentDao = DIMBA.get().getInvestmentDao();
		List<Investment> owners = investmentDao.loadByOwner(owner);
		if (owners != null && !owners.isEmpty()) {
			investments.clear();
			investments.addAll(owners);
		}
	}
	
	private void updateTotal(List<Investment> investments) {
		BigDecimal total = BigDecimal.ZERO;
		for (Investment investment : investments) {
			total = total.add(investment.getAmountSFr());
		}
		
		TextView totalNr = findViewById(R.id.investListTotalNr);
		totalNr.setText(total.toString() + "SFr");
	}
	
}
