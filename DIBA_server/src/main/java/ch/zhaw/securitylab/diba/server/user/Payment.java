package ch.zhaw.securitylab.diba.server.user;

import java.math.BigDecimal;
import java.util.Objects;

public class Payment {
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private String owner;
	public  String getOwner() { return this.owner; }
	public  void setOwner(String owner) { this.owner = owner; }
	
	private String target;
	public  String getTarget() { return this.target; }
	public  void setTarget(String target) { this.target = target; }
	
	private BigDecimal amount;
	public  BigDecimal getAmount() { return this.amount; }
	public  void setAmount(BigDecimal amount) { this.amount = amount; }
	
	private BigDecimal amountSFr;
	public  BigDecimal getAmountSFr() { return this.amountSFr; }
	public  void setAmountSFr(BigDecimal amountSFr) { this.amountSFr = amountSFr; }
	
	private String currency;
	public  String getCurrency() { return this.currency; }
	public  void setCurrency(String currency) { this.currency = currency; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public Payment(String owner, String target, BigDecimal amount, BigDecimal amountSFr, String currency) {
		this.owner     = owner;
		this.target    = target;
		this.amount    = amount;
		this.amountSFr = amountSFr;
		this.currency  = currency;
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof Payment)) return false;
		Payment payment = (Payment) o;
		return Objects.equals(owner, payment.owner) &&
				   Objects.equals(target, payment.target) &&
				   Objects.equals(amount, payment.amount) &&
				   Objects.equals(amountSFr, payment.amountSFr) &&
				   Objects.equals(currency, payment.currency);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(owner, target, amount, amountSFr, currency);
	}
	
	@Override
	public String toString() {
		return "Payment{" +
			   "owner='" + owner + '\'' +
			   ", target='" + target + '\'' +
			   ", amount=" + amount +
			   ", amountSFr='" + amountSFr + '\'' +
			   ", currency='" + currency + '\'' +
			   '}';
	}
}
