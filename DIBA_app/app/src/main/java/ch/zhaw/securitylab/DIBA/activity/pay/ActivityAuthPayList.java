package ch.zhaw.securitylab.DIBA.activity.pay;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.data.payment.Payment;

import java.util.List;

/**
 * The pay list activity shows all transactions from and to the current user.
 */
public class ActivityAuthPayList extends PayUpdatableList
{
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthPayList() { super(R.layout.activity_auth_pay_list, false); }
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	protected void autoUpdate() { super.autoUpdate(); }
	
	@Override
	protected String getUpdateText()
	{
		return "Updated all transactions.";
	}
	
	@Override
	public List<Payment> getPayments(String name)
	{
		return DIBA.get().getPaymentDao().loadTransactionsByOwner(name);
	}
	
}
