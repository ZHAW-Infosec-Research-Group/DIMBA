package ch.zhaw.securitylab.DIBA.data.metasettings;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

@Dao
public interface MetasettingsDao
{
	@Query("DELETE FROM metasettings")
	public void metaReset();
	
	@Insert
	void insert(Metasettings metasettings);
	
	@Update
	void update(Metasettings metasettings);
	
	@Query("SELECT * FROM metasettings where uid = 1")
	Metasettings getSettings();
}
