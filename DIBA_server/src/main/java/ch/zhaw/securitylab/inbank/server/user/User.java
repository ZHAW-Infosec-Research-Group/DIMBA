package ch.zhaw.securitylab.inbank.server.user;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;



public class User {

	// -------------------------------------------- //
	// GETTERS SETTERS
	// -------------------------------------------- //
	
	private String email;
	public  String getEmail() { return this.email; }
	
	private String password;
	public  String getPassword() { return this.password; }
	
	private String jsonWebToken;
	public  String getJsonWebToken() { return jsonWebToken; }
	public  void setJsonWebToken(String jsonWebToken) { this.jsonWebToken = jsonWebToken; }
	
	private BigDecimal balance;
	public  BigDecimal getBalance() { return balance; }
	public  void setBalance(BigDecimal balance) { this.balance = balance; }
	
	private String key;
	public  String getKey() { return this.key; }
	
	private List<Payment> payments = new ArrayList<>();
	public  List<Payment> getPayments() { return payments; }
	
	private List<Investment> investments = new ArrayList<>();
	
	private List<Message> messages = new ArrayList<>();
	public  List<Message> getMessages() { return messages; }
	
	// -------------------------------------------- //
	// CONSTRUCTOR
	// -------------------------------------------- //
	
	public User(String email, String password, String jsonWebToken) {
		this.email        = email;
		this.password     = password;
		this.jsonWebToken = jsonWebToken;
		this.balance      = new BigDecimal(1000);
		this.key          = "InBankReportKey";
	}
	
	// -------------------------------------------- //
	// CONVENIENCE
	// -------------------------------------------- //
	
	public void addBalance(BigDecimal balance) {
		BigDecimal newBalance = this.getBalance();
		newBalance = newBalance.add(balance.abs());
		this.setBalance(newBalance);
	}
	
	public void subtractBalance(BigDecimal balance) {
		BigDecimal newBalance = this.getBalance();
		newBalance = newBalance.subtract(balance);
		this.setBalance(newBalance);
	}
	
	public void addPayment(Payment payment) {
		this.payments.add(payment);
	}
	
	public void addInvestment(Investment investment) {
		this.investments.add(investment);
	}

	public  List<Investment> getInvestments() { 
		return this.investments;
	}
	
	public void addMessage(Message message) {
		this.messages.add(message);
	}
	
	// -------------------------------------------- //
	// EQUALS & HASHCODE
	// -------------------------------------------- //
	
	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof User)) return false;
		User user = (User) o;
		return Objects.equals(email, user.email) &&
				   Objects.equals(password, user.password) &&
				   Objects.equals(jsonWebToken, user.jsonWebToken);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(email, password, jsonWebToken);
	}
}
