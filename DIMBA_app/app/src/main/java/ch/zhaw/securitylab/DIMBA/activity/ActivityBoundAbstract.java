package ch.zhaw.securitylab.DIMBA.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.widget.NumberPicker;
import ch.zhaw.securitylab.DIMBA.AidlServiceCurrencyExchange;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;
import ch.zhaw.securitylab.DIMBA.service.ServiceCurrencyExchange;

import java.math.BigDecimal;

/**
 * Offers convenience methods to bind the activity to the Currency Exchange Service.
 */
public abstract class ActivityBoundAbstract extends ActivityDIMBAAbstract
{
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private boolean bound;
	private AidlServiceCurrencyExchange service;
	protected NumberPicker pickerCurrency;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ActivityBoundAbstract(int viewId, ToolbarMode toolbarMode, int toolbarFocus)
	{
		super(viewId, toolbarMode, toolbarFocus);
	}
	
	@Override
	protected void onStart() {
		super.onStart();
		
		// Bind to LocalService
		Intent intent = new Intent(this, ServiceCurrencyExchange.class);
		bindService(intent, Connection, Context.BIND_AUTO_CREATE);
		
		//initialize currency picker
		if (pickerCurrency == null) return;
		new Thread(() ->
		{
			waitForBound();
			this.runOnUiThread(() ->
			{
				initPickerCurrency(pickerCurrency);
			});
		}).start();
	}
	
	@Override
	protected void onStop()
	{
		super.onStop();
		unbindService(Connection);
		bound = false;
	}
	
	// -------------------------------------------- //
	// DELEGATE > BUTTONS
	// -------------------------------------------- //
	
	public void initPickerCurrency(NumberPicker numberPicker)
	{
		String[] currencies = new String[0];
		try
		{
			currencies = service.getCurrencies();
		}
		catch (RemoteException e)
		{
			throw new RuntimeException(e.getMessage());
		}
		numberPicker.setMinValue(0);
		numberPicker.setMaxValue(currencies.length - 1);
		numberPicker.setDisplayedValues(currencies);
		numberPicker.setDescendantFocusability(NumberPicker.FOCUS_BLOCK_DESCENDANTS);
		pickerCurrency.clearFocus();
	}
	
	public String getCurrency(NumberPicker numberPicker)
	{
		String[] currencies = new String[0];
		try
		{
			currencies = service.getCurrencies();
		}
		catch (RemoteException e)
		{
			throw new RuntimeException(e.getMessage());
		}
		int index = numberPicker.getValue();
		return currencies[index];
	}
	
	private void boundOrThrow()
	{
		if (!bound) throw new RuntimeException("No service bound");
	}
	
	public void waitForBound()
	{
		while (!bound)
		{
			try
			{
				Thread.sleep(200);
			}
			catch (InterruptedException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	// -------------------------------------------- //
	//	SERVICE CALLS
	// -------------------------------------------- //
	
	public String getAmountInSfr(String amount, String currency)
	{
		boundOrThrow();
		try
		{
			return service.getAmountInSfr(amount, currency);
		}
		catch (RemoteException e)
		{
			throw new RuntimeException(e.getMessage());
		}
	}
	
	public BigDecimal getAmountInSfr(BigDecimal amount, String currency)
	{
		return new BigDecimal(getAmountInSfr(amount.toString(), currency));
	}
	
	public void changeExchangeRate(String exchangeRate, String currency)
	{
		try
		{
			service.changeExchangeRate(exchangeRate, currency);
		}
		catch (RemoteException e)
		{
			throw new RuntimeException(e.getMessage());
		}
	}
	
	public String getSfrString()
	{
		boundOrThrow();
		try
		{
			return service.getSfrString();
		}
		catch (RemoteException e)
		{
			throw new RuntimeException(e.getMessage());
		}
	}
	
	// -------------------------------------------- //
	//	callbacks for service
	// -------------------------------------------- //
	
	private ServiceConnection Connection = new ServiceConnection()
	{
		// Called when the connection with the service is established
		public void onServiceConnected(ComponentName className, IBinder localService)
		{
			// Following the example above for an AIDL interface,
			// this gets an instance of the IRemoteInterface, which we can use to call on the service
			service = AidlServiceCurrencyExchange.Stub.asInterface(localService);
			bound = true;
		}
		
		// Called when the connection with the service disconnects unexpectedly
		public void onServiceDisconnected(ComponentName className)
		{
			Log.e(Extras.LOG_TAG, "Service has unexpectedly disconnected");
			service = null;
			bound = false;
		}
	};
	
}
