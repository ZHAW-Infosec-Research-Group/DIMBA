package ch.zhaw.securitylab.DIBA.networking.listeners;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.data.invest.Investment;
import ch.zhaw.securitylab.DIBA.helpers.Toasty;

import org.json.JSONException;
import org.json.JSONObject;

public class ListenerInvest extends ListenerAbstractJSON {
	
	private DIBA diba = DIBA.get();
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
				diba.getInvestmentDao().insertAll(investment);
			}).start();
		}
	}

	@Override
	protected String getRequestResource() {
		return "an investment";
	}
}
