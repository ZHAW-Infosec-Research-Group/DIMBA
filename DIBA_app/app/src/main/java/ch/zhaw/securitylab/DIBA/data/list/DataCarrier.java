package ch.zhaw.securitylab.DIBA.data.list;

import java.util.Map;

/**
 * Offers methods for displaying or gathering data easily.
 */
public interface DataCarrier
{
	Map<String, Object> toListData();
	Map<String, String> toConnectionData();
}
