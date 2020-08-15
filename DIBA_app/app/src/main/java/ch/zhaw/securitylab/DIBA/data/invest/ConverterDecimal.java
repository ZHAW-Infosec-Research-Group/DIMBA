package ch.zhaw.securitylab.DIBA.data.invest;

import androidx.room.TypeConverter;

import java.math.BigDecimal;

public class ConverterDecimal
{
	@TypeConverter
	public static BigDecimal toDecimal(String value)
	{
		return value == null ? null : new BigDecimal(value);
	}
	
	@TypeConverter
	public static String toString(BigDecimal value)
	{
		return value == null ? null : value.toString();
	}
}
