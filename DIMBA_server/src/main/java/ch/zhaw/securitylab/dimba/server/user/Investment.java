package ch.zhaw.securitylab.dimba.server.user;

import java.util.Objects;
import java.sql.Connection;

public class Investment {
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private String owner;
	public  String getOwner() { return this.owner; }
	public  void setOwner(String owner) { this.owner = owner; }
	
	private long date;
	public  long getDate() { return this.date; }
	public  void setDate(long date) { this.date = date; }
	
	private String amount;
	public  String getAmount() { return this.amount; }
	public  void setAmount(String amount) { this.amount = amount; }
	
	private String amountSFr;
	public  String getAmountSFr() { return this.amountSFr; }
	public  void setAmountSFr(String amountSFr) { this.amountSFr = amountSFr; }
	
	private String currency;
	public  String getCurrency() { return this.currency; }
	public  void setCurrency(String currency) { this.currency = currency; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public Investment(String owner, long date, String amount, String amountSFr, String currency) {
		this.owner     = owner;
		this.date      = date;
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
		if (!(o instanceof Investment)) return false;
		Investment that = (Investment) o;
		return date == that.date &&
				   Objects.equals(owner, that.owner) &&
				   Objects.equals(amount, that.amount) &&
				   Objects.equals(amountSFr, that.amountSFr) &&
				   Objects.equals(currency, that.currency);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(owner, date, amount, amountSFr, currency);
	}
	
	@Override
	public String toString() {
		return "Investment{" +
			   "owner='"       + owner + '\'' +
			   ", date="       + date +
			   ", amount='"    + amount + '\'' +
			   ", amountSFr='" + amountSFr + '\'' +
			   ", currency='"  + currency + '\'' +
			   '}';
	}
}
