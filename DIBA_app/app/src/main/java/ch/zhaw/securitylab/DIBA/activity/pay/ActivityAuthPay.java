package ch.zhaw.securitylab.DIBA.activity.pay;

import android.os.Bundle;
import ch.zhaw.securitylab.DIBA.R;

/**
 * The main pay activity shows all payments and routes to the other payment related activities.
 */
public class ActivityAuthPay extends PayUpdatableList
{
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityAuthPay() { super(R.layout.activity_auth_pay, true); }
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		button(ActivityAuthPayMake.class, R.id.payGoMake, R.id.payImageGoMake);
		button(ActivityAuthPayList.class, R.id.payGoList, R.id.payImageGoList);
		button(ActivityAuthPaySlip.class, R.id.payGoPayslip, R.id.payImageGoSlip);
	}
	
	// -------------------------------------------- //
	// AUTO UPDATE
	// -------------------------------------------- //
	
	@Override
	protected void autoUpdate() { super.autoUpdate(); }
	
	@Override
	protected String getUpdateText()
	{
		return "Updated payment list.";
	}
	
}
