package ch.zhaw.securitylab.DIBA.helpers;

import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * Wrapper class for URL UTF-8 en- or decodation.
 */
public class Decode
{
	public static String encode(String string)
	{
		if (string == null) return null;
		
		try
		{
			return URLEncoder.encode(string, "UTF-8");
		}
		catch (Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	
	public static String decode(String string)
	{
		if (string == null) return null;
		
		try
		{
			return URLDecoder.decode(string, "UTF-8");
		}
		catch (Exception e)
		{
			throw new RuntimeException(e);
		}
	}
}
