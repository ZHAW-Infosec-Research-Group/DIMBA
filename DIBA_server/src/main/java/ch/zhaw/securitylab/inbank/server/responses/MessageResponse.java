package ch.zhaw.securitylab.inbank.server.responses;

import java.util.List;
import ch.zhaw.securitylab.inbank.server.user.Message;

public class MessageResponse {

	private List<Message> l;
	
	public MessageResponse(List<Message> l) {
		this.l = l;
	}

	public List<Message> getList() { return this.l; }
}
