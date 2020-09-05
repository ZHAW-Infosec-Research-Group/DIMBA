package ch.zhaw.securitylab.diba.server.responses;

import java.util.List;
import ch.zhaw.securitylab.diba.server.user.Investment;
import ch.zhaw.securitylab.diba.server.user.Payment;

public class ListResponse {

	private List<Investment> l;
	
	public ListResponse(List<Investment> l) {
		this.l = l;
	}

	public List<Investment> getList() { return this.l; }
}
