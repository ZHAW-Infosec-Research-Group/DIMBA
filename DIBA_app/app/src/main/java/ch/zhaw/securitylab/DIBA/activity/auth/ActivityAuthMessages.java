package ch.zhaw.securitylab.DIBA.activity.auth;

import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;
import ch.zhaw.securitylab.DIBA.data.messages.Message;
import ch.zhaw.securitylab.DIBA.data.messages.MessageDB;
import ch.zhaw.securitylab.DIBA.data.messages.MessageListAdapter;
import ch.zhaw.securitylab.DIBA.networking.ConnectionBuilder;
import ch.zhaw.securitylab.DIBA.networking.listeners.ListenerMessages;

import java.util.Collections;
import java.util.List;

/**
 * The message activity handles and displays messages from and the the app. Can be used to retrieve hints
 * for the weaknesses of DIBA.
 */
public class ActivityAuthMessages extends ActivityDIBAAbstract
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private DIBA diba;
	private RecyclerView messageRecycler;
	private MessageListAdapter messageAdapter;
	private EditText chatTextField;
	private EditText searchTextField;
	private MessageDB messageDB;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthMessages() { super(R.layout.activity_auth_messages, ToolbarMode.NAV_AUTH, R.id.nav_go_Messages, false); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		diba = DIBA.get();
		messageDB = diba.getMessageDB();
		searchTextField = findViewById(R.id.searchChatboxEdittext);
		chatTextField   = findViewById(R.id.messagesChatboxEdittext);
		messageRecycler = findViewById(R.id.messagesReyclerviewList);
		
		button(onMessageSend(), R.id.messagesChatboxButtonSend);
		button(onSearch(), R.id.searchChatboxButton);
		
		messageDB.insertHiddenMessageIfNotExists();
		
		initMessageRecycler();
	}
	
	// -------------------------------------------- //
	// BUTTONS
	// -------------------------------------------- //
	
	private OnClickListener onMessageSend() {
		return (View v) -> {
			sendMessage(chatTextField.getText().toString());
			chatTextField.setText("");
			removeKeyboard();
		};
	}
	
	private OnClickListener onSearch() {
		return (View v) -> {
			searchMessages(searchTextField.getText().toString());
			removeKeyboard();
		};
	}
	
	@Override
	protected void autoUpdate()
	{
		requestMessages();
	}
	
	@Override
	protected String getUpdateText()
	{
		return "Fetched new messages from server.";
	}
	
	// -------------------------------------------- //
	// INITIALIZE
	// -------------------------------------------- //
	
	private void initMessageRecycler() {
		List<Message> messageList = messageDB.getAllMessagesOfUser(diba.getUserName());
		messageAdapter = new MessageListAdapter(messageList);
		messageRecycler.setLayoutManager(new LinearLayoutManager(this));
		messageRecycler.setAdapter(messageAdapter);
		
		if (messageList.isEmpty()) {
			String text = "Greetings User\n\nWe are happy that you try to hack our app. If you need help, send the message 'hint' to the server.\n\nBest regards,\nThe DIBA developer team.";
			clearAndShowMessages(Collections.singletonList(new Message(text, Message.VIEW_TYPE_MESSAGE_RECEIVED)));
		}
	}
	
	private void searchMessages(String searchString) {
		List<Message> messages = messageDB.searchMessage(searchString, diba.getUserName());
		messageAdapter.removeAll();
		messageAdapter.addAllMessages(messages);
	}
	
	private void removeKeyboard() {
		View view = this.getCurrentFocus();
		if (view != null)
		{
			InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
			imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
		}
	}
	
	private void requestMessages() {
		ConnectionBuilder.create()
			.url("/messages")
			.listenerJSON(new ListenerMessages(ActivityAuthMessages.this))
			.buildJSON();
	}
	
	public void clearAndShowMessages(List<Message> messages) {
		messageAdapter.removeAll();
		messageAdapter.addAllMessages(messages);
		messageAdapter.notifyItemRangeInserted(0, messageAdapter.getItemCount());
		messageRecycler.scrollToPosition(messageAdapter.getItemCount() - 1);
	}
	
	private void sendMessage(String messageString) {
		if ("".equals(messageString)) return;
		Message message = new Message(messageString, Message.VIEW_TYPE_MESSAGE_SENT);
		messageDB.addMessage(message, diba.getUserName());
		messageAdapter.addMessage(message);
		messageRecycler.scrollToPosition(messageAdapter.getItemCount() - 1);
		
		// Send Message
		ConnectionBuilder.create()
			.url("/messages")
			.data(message)
			.listenerJSON(new ListenerMessages(this))
			.buildJSON();
	}
	
}
