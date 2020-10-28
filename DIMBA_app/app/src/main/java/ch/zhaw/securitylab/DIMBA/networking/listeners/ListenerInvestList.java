package ch.zhaw.securitylab.DIMBA.networking.listeners;

import ch.zhaw.securitylab.DIMBA.activity.invest.ActivityAuthInvestList;
import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.data.invest.Investment;
import ch.zhaw.securitylab.DIMBA.data.invest.InvestmentDao;
import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ListenerInvestList extends ListenerAbstractJSON {
	
	private static final Type TYPE_TOKEN = new TypeToken<List<Investment>>() {}.getType();
	
	private final ActivityAuthInvestList activityAuthInvestList;
	private DIMBA DIMBA = ch.zhaw.securitylab.DIMBA.DIMBA.get();
	private InvestmentDao dao = DIMBA.getInvestmentDao();
	
	public ListenerInvestList(ActivityAuthInvestList activityAuthInvestList) {
		this.activityAuthInvestList = activityAuthInvestList;
	}
	
	@Override
	public void onResponse(JSONObject response) {
		super.onResponse(response);
//		final List<Investment> investments = response.decodeJson(TYPE_TOKEN);
		JSONArray investments = null;
		try {
			investments = response.getJSONArray("list");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		List<Investment> list = new ArrayList<Investment>();
		for (int i = 0 ; i < investments.length(); i++) {
			JSONObject obj = null;
			try {
				obj = investments.getJSONObject(i);
				String owner     = obj.getString("owner");
				Timestamp ts     = new Timestamp(obj.getLong("date"));
				Date date        = new Date(ts.getTime());
				BigDecimal amount    = BigDecimal.valueOf(obj.getInt("amount"));
				BigDecimal amountSFr = BigDecimal.valueOf(obj.getInt("amountSFr"));
				String currency  = obj.getString("currency");
				Investment investment = new Investment(owner, date, amount, amountSFr, currency);
				list.add(investment);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		new Thread(() -> {
				dao.delete(dao.loadByOwner(DIMBA.getUserName()));
				dao.insertAll(list);
				activityAuthInvestList.updateListItems();
				activityAuthInvestList.populateListView();
		}).start();
	}
	
	@Override
	protected String getRequestResource()
	{
		return "the investments";
	}
	
}
