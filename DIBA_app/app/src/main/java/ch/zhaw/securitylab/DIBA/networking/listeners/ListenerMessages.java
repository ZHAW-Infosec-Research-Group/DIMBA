package ch.zhaw.securitylab.DIBA.networking.listeners;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMessages;
import ch.zhaw.securitylab.DIBA.data.messages.Message;
import ch.zhaw.securitylab.DIBA.data.messages.MessageDB;

import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ListenerMessages extends ListenerAbstractJSON {
	
	private static final Type TYPE_TOKEN = new TypeToken<List<Message>>() { }.getType();
	
	private final ActivityAuthMessages activityAuthMessages;
	private DIBA diba = DIBA.get();
	private MessageDB db = diba.getMessageDB();
	
	public ListenerMessages(ActivityAuthMessages activityAuthMessages) {
		this.activityAuthMessages = activityAuthMessages;
	}

	@Override
	public void onResponse(JSONObject response) {
		super.onResponse(response);
//		final List<Message> messages = response.decodeJson(TYPE_TOKEN);
		JSONArray messages = null;
		try {
			if (response.has("list")) {
				messages = response.getJSONArray("list");
			} else {
				String status = response.getString("string");
				if (status.equals("message added")) {
					return;
				}
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		List<Message> list = new ArrayList<Message>();
		for (int i = 0 ; i < messages.length(); i++) {
			JSONObject obj = null;
			try {
				obj = messages.getJSONObject(i);
				String author   = obj.getString("message");
				int viewType    = obj.getInt("viewType");
				Timestamp ts    = new Timestamp(obj.getLong("creationTime"));
				Date date       = new Date(ts.getTime());
				Message message = new Message(author, viewType, date);
				list.add(message);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		
		if (list.isEmpty()) return;
		
		new Thread(() -> {
			db.insertIfNotExists(list, diba.getUserName());
			activityAuthMessages.runOnUiThread(() -> {
				activityAuthMessages.clearAndShowMessages(list);
			});
		}).start();
	}
	
	@Override
	protected String getRequestResource() {
		return "the messages";
	}
	
}
