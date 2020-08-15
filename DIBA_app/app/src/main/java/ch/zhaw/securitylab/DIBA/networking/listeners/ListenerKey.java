package ch.zhaw.securitylab.DIBA.networking.listeners;

import org.json.JSONException;
import org.json.JSONObject;

import ch.zhaw.securitylab.DIBA.networking.InResponse;
import ch.zhaw.securitylab.DIBA.report.ReportCollector;

public class ListenerKey extends ListenerAbstractJSON {
	
	private ReportCollector collector;
	
	public ListenerKey(ReportCollector collector)
	{
		this.collector = collector;
	}

	@Override
	public void onResponse(JSONObject response) {
		super.onResponse(response);
		String key = null;
		try {
			key = response.getString("string");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		collector.setKey(key);
	}
	
	@Override
	protected String getRequestResource()
	{
		return "the key";
	}
	
}
