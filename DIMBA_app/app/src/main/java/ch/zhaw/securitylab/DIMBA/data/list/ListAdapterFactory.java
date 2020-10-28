package ch.zhaw.securitylab.DIMBA.data.list;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.SimpleAdapter;
import ch.zhaw.securitylab.DIMBA.R;
import ch.zhaw.securitylab.DIMBA.helpers.Extras;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Offers list of DataCarrier to ListAdapter conversion.
 */
public class ListAdapterFactory
{
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final Map<String, String> NICE_EXTRAS;
	static
	{
		NICE_EXTRAS = new HashMap<>();
		NICE_EXTRAS.put(Extras.AMOUNT, "Amount:");
		NICE_EXTRAS.put(Extras.CURRENCY, "Currency:");
		NICE_EXTRAS.put(Extras.TARGET, "Recipient:");
		NICE_EXTRAS.put(Extras.AMOUNT_SFR, "Deduction in SFr:");
	}
	
	// -------------------------------------------- //
	// INSTANCE & CONSTRUCT
	// -------------------------------------------- //
	
	private static ListAdapterFactory i = new ListAdapterFactory();
	public static ListAdapterFactory get() { return i; }
	
	// -------------------------------------------- //
	// FACTORY
	// -------------------------------------------- //
	
	public ListAdapter getAdapterInvest(Context context, List<? extends DataCarrier> payments, String[] from)
	{
		List<Map<String, Object>> data = toListView(payments);
		data.add(0, getListHeader(from));
		int layout = R.layout.invest_entry;
		int[] to = {R.id.investEntryDate, R.id.investEntryAmount, R.id.investEntryCurrency};
		return new SimpleAdapter(context, data, layout, from, to);
	}
	
	public ListAdapter getAdapterPay(Context context, Bundle bundle)
	{
		int layout = R.layout.extra_entry;
		String[] from = {"key", "value"};
		int[] to = {R.id.extra_key, R.id.extra_value};
		
		// Create
		List<Map<String, Object>> list = new ArrayList<>();
		
		// Fill
		for (String key : bundle.keySet())
		{
			Map<String, Object> entry = new HashMap<>();
			entry.put("key", NICE_EXTRAS.get(key));
			entry.put("value", bundle.get(key));
			list.add(entry);
		}
		
		// Return
		return new SimpleAdapter(context, list, layout, from, to);
	}
	
	// -------------------------------------------- //
	// CONVENIENCE
	// -------------------------------------------- //
	
	private static List<Map<String, Object>> toListView(List<? extends DataCarrier> dataCarriers)
	{
		// Create
		List<Map<String, Object>> ret = new ArrayList<>();
		if (dataCarriers == null) return ret;
		
		// Fill
		for (DataCarrier dataCarrier : dataCarriers)
		{
			ret.add(dataCarrier.toListData());
		}
		
		// Return
		return ret;
	}
	
	private static Map<String, Object> getListHeader(String[] from)
	{
		// Create
		Map<String, Object> ret = new HashMap<>();
		
		// Fill
		for (String key : from)
		{
			ret.put(key, upperCaseFirst(key));
		}
		
		// Return
		return ret;
	}
	
	private static String upperCaseFirst(String string)
	{
		return string.substring(0,1).toUpperCase() + string.substring(1);
	}
	
}
