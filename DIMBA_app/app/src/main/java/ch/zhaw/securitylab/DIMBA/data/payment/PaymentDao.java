package ch.zhaw.securitylab.DIMBA.data.payment;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;

import java.util.List;

@Dao
public interface PaymentDao  {

	@Query("DELETE FROM payment")
	public void metaReset();
	
	@Query("SELECT * FROM payment")
	List<Payment> getAll();
	
	@Query("SELECT * FROM payment WHERE owner=:owner")
	List<Payment> loadByOwner(String owner);
	
	@Query("SELECT * FROM payment WHERE owner=:owner OR target=:owner")
	List<Payment> loadTransactionsByOwner(String owner);
	
	@Insert
	void insertAll(Payment... payments);
	
	@Insert
	void insertAll(List<Payment> payments);
	
	@Delete
	void delete(Payment payments);
	
	@Delete
	void delete(List<Payment> payments);
}
