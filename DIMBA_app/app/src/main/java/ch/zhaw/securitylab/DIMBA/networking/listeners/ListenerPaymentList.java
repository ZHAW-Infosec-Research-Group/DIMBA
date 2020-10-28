package ch.zhaw.securitylab.DIMBA.networking.listeners;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.activity.pay.PayUpdatableList;
import ch.zhaw.securitylab.DIMBA.data.payment.Payment;
import ch.zhaw.securitylab.DIMBA.data.payment.PaymentDao;

import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class ListenerPaymentList extends ListenerAbstractJSON {

	private static final Type TYPE_TOKEN = new TypeToken<List<Payment>>() {}.getType();
	private final PayUpdatableList payUpdatableList;

	public ListenerPaymentList(PayUpdatableList payUpdatableList) {
		this.payUpdatableList = payUpdatableList;
	}

	@Override
	public void onResponse(JSONObject response) {
		super.onResponse(response);
//		List<Payment> payments = response.decodeJson(TYPE_TOKEN);
		JSONArray payments = null;
		try {
			payments = response.getJSONArray("list");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		List<Payment> list = new ArrayList<Payment>();
		for (int i = 0 ; i < payments.length(); i++) {
			JSONObject obj = null;
			try {
				obj = payments.getJSONObject(i);
				String owner  = obj.getString("owner");
				String target = obj.getString("target");
				BigDecimal amount    = BigDecimal.valueOf(obj.getInt("amount"));
				BigDecimal amountSFr = BigDecimal.valueOf(obj.getInt("amountSFr"));
				String currency  = obj.getString("currency");
				Payment payment = new Payment(owner, target, amount, amountSFr, currency);
				list.add(payment);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		PaymentDao dao = DIMBA.get().getPaymentDao();
		new Thread(() -> {
			String name = DIMBA.get().getUserName();
			dao.delete(dao.loadByOwner(name));
			dao.insertAll(list);
			List<Payment> updated = payUpdatableList.getPayments(name);
			payUpdatableList.updateListView(updated);
		}).start();
	}
}
