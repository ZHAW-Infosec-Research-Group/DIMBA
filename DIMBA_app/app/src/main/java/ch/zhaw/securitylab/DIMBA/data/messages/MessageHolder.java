package ch.zhaw.securitylab.DIMBA.data.messages;

import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import ch.zhaw.securitylab.DIMBA.R;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class MessageHolder extends RecyclerView.ViewHolder
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private TextView textMessage;
	private TextView textTime;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	private MessageHolder(View itemView, int idMessageText, int idMessageTime)
	{
		super(itemView);
		textMessage = itemView.findViewById(idMessageText);
		textTime = itemView.findViewById(idMessageTime);
	}
	
	// -------------------------------------------- //
	// BINDING
	// -------------------------------------------- //
	
	protected void bind(Message message)
	{
		textMessage.setText(message.getMessage());
		
		// Format the stored timestamp into a readable String using method.
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		textTime.setText(dateFormat.format(message.getCreationTime()));
	}
	
	// -------------------------------------------- //
	// FACTORY
	// -------------------------------------------- //
	
	private static MessageHolder holderReceived(View itemView)
	{
		return new MessageHolder(itemView, R.id.recived_text_message_body, R.id.recived_text_message_time);
	}
	
	private static MessageHolder holderSent(View itemView)
	{
		return new MessageHolder(itemView, R.id.sent_text_message_body, R.id.sent_text_message_time);
	}
	
	public static MessageHolder holder(View itemView, int viewType)
	{
		if (viewType == Message.VIEW_TYPE_MESSAGE_SENT) return holderSent(itemView);
		if (viewType == Message.VIEW_TYPE_MESSAGE_RECEIVED) return holderReceived(itemView);
		throw new RuntimeException(viewType + " is not an applicable view type. 1 or 2 is.");
	}
	
}
