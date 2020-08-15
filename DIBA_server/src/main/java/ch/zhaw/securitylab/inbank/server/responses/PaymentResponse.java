package ch.zhaw.securitylab.inbank.server.responses;

import java.util.List;
import ch.zhaw.securitylab.inbank.server.user.Payment;

public class PaymentResponse {

	private List<Payment> l;
	
	public PaymentResponse(List<Payment> l) {
		this.l = l;
	}

	public List<Payment> getList() { return this.l; }
}
