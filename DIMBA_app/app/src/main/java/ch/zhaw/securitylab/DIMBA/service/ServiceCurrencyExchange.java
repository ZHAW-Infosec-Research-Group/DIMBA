package ch.zhaw.securitylab.DIMBA.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.IBinder;
import android.os.RemoteException;
import ch.zhaw.securitylab.DIMBA.AidlServiceCurrencyExchange;
import ch.zhaw.securitylab.DIMBA.DIMBA;

import java.math.BigDecimal;

/**
 * The currency exchange service handles various tasks associated with currency, such as
 * fetching all currencies or doing the math to convert any amount of a foreign currency
 * into swiss francs.zz
 */
public class ServiceCurrencyExchange extends Service {
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final String PREFERENCE_NAME = "currencyPreferences";
	private static final int PREFERENCE_MODE = Context.MODE_PRIVATE;
	
	private static final String[] CURRENCIES = {"SFr", "Eur", "$", "£"};
	private static final String ALREADY_FILLED = "already filled";
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private SharedPreferences currencyExchangeRate;
	
	// -------------------------------------------- //
	// INSTANCE & CONSTRUCT
	// -------------------------------------------- //
	
	@Override
	public IBinder onBind(Intent intent)
	{
		// Return the interface
		return BinderCurrencyExchange;
	}
	
	@Override
	public void onCreate()
	{
		super.onCreate();
		currencyExchangeRate = DIMBA.get().getSharedPreferences(PREFERENCE_NAME, PREFERENCE_MODE);
		
		if (!currencyExchangeRate.getBoolean(ALREADY_FILLED, false))
		{
			Editor editor = currencyExchangeRate.edit();
			editor.putString(CURRENCIES[0], "1");
			editor.putString(CURRENCIES[1], "1.5");
			editor.putString(CURRENCIES[2], "0.9");
			editor.putString(CURRENCIES[3], "1.75");
			editor.putBoolean(ALREADY_FILLED, true);
			editor.apply();
		}
	}
	
	private final AidlServiceCurrencyExchange.Stub BinderCurrencyExchange = new AidlServiceCurrencyExchange.Stub()
	{
		@Override
		public String getAmountInSfr(String amount, String currency)
		{
			BigDecimal exchangeRate = new BigDecimal(currencyExchangeRate.getString(currency, "0"));
			BigDecimal amountLocal = new BigDecimal(amount);
			return amountLocal.multiply(exchangeRate).toString();
		}
		
		@Override
		public String[] getCurrencies() throws RemoteException
		{
			return CURRENCIES;
		}
		
		@Override
		public String getSfrString() throws RemoteException
		{
			return CURRENCIES[0];
		}
		
		@Override
		public void changeExchangeRate(String exchangeRate, String currency) throws RemoteException
		{
			if (currencyExchangeRate.getString(currency, null) == null) throw new RuntimeException("unknown Currency");
			
			Editor editor = currencyExchangeRate.edit();
			editor.putString(currency, exchangeRate);
			editor.apply();
		}
	};
}
