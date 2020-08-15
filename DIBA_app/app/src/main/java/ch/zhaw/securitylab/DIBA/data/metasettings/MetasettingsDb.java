package ch.zhaw.securitylab.DIBA.data.metasettings;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;

@Database(entities = {Metasettings.class}, version = 1, exportSchema = false)
@TypeConverters({ConverterDifficulty.class})
public abstract class MetasettingsDb extends RoomDatabase
{
	public abstract MetasettingsDao metasettingsDao();
}
