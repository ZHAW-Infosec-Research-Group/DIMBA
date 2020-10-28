package ch.zhaw.securitylab.DIMBA.data.invest;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;

import java.util.List;

@Dao
public interface InvestmentDao
{
	@Query("DELETE FROM investment")
	public void metaReset();
	
	@Query("SELECT * FROM investment")
	List<Investment> getAll();
	
	@Query("SELECT * FROM investment WHERE owner=:owner")
	List<Investment> loadByOwner(String owner);
	
	@Insert
	void insertAll(Investment... investments);
	
	@Insert
	void insertAll(List<Investment> investments);
	
	@Delete
	void delete(Investment investment);
	
	@Delete
	void delete(List<Investment> investments);
}
