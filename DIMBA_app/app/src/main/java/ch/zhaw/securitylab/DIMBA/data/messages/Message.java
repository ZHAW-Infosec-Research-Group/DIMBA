package ch.zhaw.securitylab.DIMBA.data.messages;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.data.list.DataCarrier;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Message implements DataCarrier
{
	// -------------------------------------------- //
	// CONSTANT
	// -------------------------------------------- //
	
	public static final int VIEW_TYPE_MESSAGE_SENT = 1;
	public static final int VIEW_TYPE_MESSAGE_RECEIVED = 2;
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private String message;
	public String getMessage() { return this.message; }
	
	private Date creationTime;
	public Date getCreationTime() { return this.creationTime; }
	
	private int viewType;
	public int getViewType() { return this.viewType; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public Message(String message, int viewType)
	{
		this(message, viewType, new Date(System.currentTimeMillis()));
	}
	
	public Message(String message, int viewType, Date creationTime)
	{
		this.message = message;
		this.viewType = viewType;
		this.creationTime = creationTime;
	}
	
	// -------------------------------------------- //
	// DATA CARRIER
	// -------------------------------------------- //
	
	@Override
	public Map<String, Object> toListData() { throw new RuntimeException("Not implemented"); }
	
	@Override
	public Map<String, String> toConnectionData()
	{
		// Create
		Map<String, String> ret = new HashMap<>();
		
		// Fill
		ret.put("owner", DIMBA.get().getUserName());
		ret.put("date", String.valueOf(creationTime.getTime()));
		ret.put("message", message);
		ret.put("viewType", String.valueOf(viewType));
		
		// Return
		return ret;
	}
	
}
