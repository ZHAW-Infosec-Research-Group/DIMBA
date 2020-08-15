package ch.zhaw.securitylab.DIBA.data.messages;

import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ch.zhaw.securitylab.DIBA.R;

import java.util.List;

import static ch.zhaw.securitylab.DIBA.data.messages.Message.VIEW_TYPE_MESSAGE_RECEIVED;
import static ch.zhaw.securitylab.DIBA.data.messages.Message.VIEW_TYPE_MESSAGE_SENT;

public class MessageListAdapter extends RecyclerView.Adapter
{
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	private List<Message> messageList;
	public MessageListAdapter(List<Message> messageList) {	this.messageList = messageList; }
	public void addMessage(Message message) { this.messageList.add(message); }
	public void addAllMessages(List<Message> messageList){ this.messageList.addAll(messageList); }
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public int getItemCount()
	{
		return messageList.size();
	}
	
	// Determines the appropriate ViewType according to the sender of the message.
	@Override
	public int getItemViewType(int position)
	{
		Message message = messageList.get(position);
		return message.getViewType();
	}
	
	// Inflates the appropriate layout according to the ViewType.
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType)
	{
		if (viewType != VIEW_TYPE_MESSAGE_SENT && viewType != VIEW_TYPE_MESSAGE_RECEIVED)
		{
			throw new RuntimeException("ViewType must be either MESSAGE_SENT (1) or MESSAGE_RECEIVED (2).");
		}
		
		int idLayout = viewType == VIEW_TYPE_MESSAGE_SENT ? R.layout.item_message_sent : R.layout.item_message_received;
		View view = LayoutInflater.from(parent.getContext()).inflate(idLayout, parent, false);
		return MessageHolder.holder(view, viewType);
	}
	
	// Passes the message object to a ViewHolder so that the contents can be bound to UI.
	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder holder, int position)
	{
		if (!(holder instanceof MessageHolder))
		{
			throw new RuntimeException("Holder must be MessageHolder, was " + holder.getClass().getSimpleName());
		}
		
		Message message = messageList.get(position);
		((MessageHolder) holder).bind(message);
	}
	
	public void removeAll()
	{
		int max = messageList.size();
		messageList.clear();
		notifyItemRangeRemoved(0, max);
	}
}
