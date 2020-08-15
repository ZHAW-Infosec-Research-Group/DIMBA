package ch.zhaw.securitylab.DIBA.data.invest;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

import ch.zhaw.securitylab.DIBA.data.list.DataCarrier;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Entity
public class Investment implements DataCarrier
{
	// -------------------------------------------- //
	// CONSTANT
	// -------------------------------------------- //
	
	private static final SimpleDateFormat FORMAT = new SimpleDateFormat("dd.MM.yy:HH.mm.ss", Locale.GERMANY);
	
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	@PrimaryKey(autoGenerate = true)
	private int uid;
	public int getUid() { return this.uid; }
	public void setUid(int uid) { this.uid = uid; }
	
	private String owner;
	public String getOwner() { return this.owner; }
	public void setOwner(String owner) { this.owner = owner; }
	
	private Date date;
	public Date getDate() { return this.date; }
	public void setDate(Date date) { this.date = date; }
	
	private BigDecimal amount;
	public BigDecimal getAmount() { return this.amount; }
	public void setAmount(BigDecimal amount) { this.amount = amount; }
	
	private BigDecimal amountSFr;
	public BigDecimal getAmountSFr() { return this.amountSFr; }
	public void setAmountSFr(BigDecimal amountSFr) { this.amountSFr = amountSFr; }
	
	private String currency;
	public String getCurrency() { return this.currency; }
	public void setCurrency(String currency) { this.currency = currency; }
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public Investment(String owner, Date date, BigDecimal amount, BigDecimal amountSFr, String currency)
	{
		this.owner = owner;
		this.date = date;
		this.amount = amount;
		this.amountSFr = amountSFr;
		this.currency = currency;
	}
	
	// -------------------------------------------- //
	// DATA CARRIER
	// -------------------------------------------- //
	
	@Override
	public Map<String, Object> toListData()
	{
		// Create
		Map<String, Object> ret = new HashMap<>();
		
		// Fill
		ret.put("date", FORMAT.format(this.getDate()));
		ret.put("amount", this.getAmount());
		ret.put("currency", this.getCurrency());
		
		// Return
		return ret;
	}
	
	@Override
	public Map<String, String> toConnectionData()
	{
		// Create
		Map<String, String> ret = new HashMap<>();
		
		// Fill
		ret.put("owner", owner);
		ret.put("date", String.valueOf(date.getTime()));
		ret.put("amount", amount.toString());
		ret.put("amountSFr", amountSFr.toString());
		ret.put("currency", currency);
		
		// Return
		return ret;
	}
	
}
