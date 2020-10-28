package ch.zhaw.securitylab.DIMBA.networking.listeners;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.data.invest.Investment;
import ch.zhaw.securitylab.DIMBA.helpers.Toasty;

import org.json.JSONException;
import org.json.JSONObject;

public class ListenerInvest extends ListenerAbstractJSON {
	
	private DIMBA DIMBA = ch.zhaw.securitylab.DIMBA.DIMBA.get();
	private Investment investment;
	
	public ListenerInvest(Investment investment)
	{
		this.investment = investment;
	}
	
	@Override
	public void onResponse(JSONObject response) {

		super.onResponse(response);
		String status = null;
		try {
			status = response.getString("string");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		if (status.equals("invest worked")) {
			// Make Server contact
			Toasty.longCenterToast("Investment: " + investment.getAmount() + investment.getCurrency());
			new Thread(() -> {
				DIMBA.getInvestmentDao().insertAll(investment);
			}).start();
		}
	}

	@Override
	protected String getRequestResource() {
		return "an investment";
	}
}
