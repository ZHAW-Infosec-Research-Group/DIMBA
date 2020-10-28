package ch.zhaw.securitylab.DIMBA.data.list;

import java.util.Map;

/**
 * Offers methods for displaying or gathering data easily.
 */
public interface DataCarrier
{
	Map<String, Object> toListData();
	Map<String, String> toConnectionData();
}
