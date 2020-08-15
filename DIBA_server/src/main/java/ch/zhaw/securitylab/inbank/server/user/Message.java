package ch.zhaw.securitylab.inbank.server.user;

import java.util.Objects;

public class Message {

	private String message;
	private long creationTime;
	private int viewType;
	
	public Message(String message, int viewType, long date) {
		this.message = message;
		this.viewType = viewType;
		this.creationTime = date;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	public long getCreationTime() {
		return creationTime;
	}
	
	public void setCreationTime(long creationTime) {
		this.creationTime = creationTime;
	}
	
	public int getViewType() {
		return viewType;
	}
	
	public void setViewType(int viewType) {
		this.viewType = viewType;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof Message)) return false;
		Message message1 = (Message) o;
		return creationTime == message1.creationTime &&
				   viewType == message1.viewType &&
				   Objects.equals(message, message1.message);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(message, creationTime, viewType);
	}
}
