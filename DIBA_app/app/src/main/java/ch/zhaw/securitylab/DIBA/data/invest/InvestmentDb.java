package ch.zhaw.securitylab.DIBA.data.invest;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;

@Database(entities = {Investment.class}, version = 1, exportSchema = false)
@TypeConverters({ConverterDate.class, ConverterDecimal.class})
public abstract class InvestmentDb extends RoomDatabase
{
	public abstract InvestmentDao investmentDao();
}