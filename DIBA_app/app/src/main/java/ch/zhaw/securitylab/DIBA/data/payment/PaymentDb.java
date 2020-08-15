package ch.zhaw.securitylab.DIBA.data.payment;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;

import ch.zhaw.securitylab.DIBA.data.invest.ConverterDecimal;

@Database(entities = {Payment.class}, version = 1, exportSchema = false)
@TypeConverters({ConverterDecimal.class})
public abstract class PaymentDb extends RoomDatabase {

	public abstract PaymentDao paymentDao();
}