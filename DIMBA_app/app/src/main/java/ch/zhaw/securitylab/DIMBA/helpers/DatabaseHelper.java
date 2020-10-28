package ch.zhaw.securitylab.DIMBA.helpers;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Helper class that actually creates and manages the provider's underlying data repository.
 */
public class DatabaseHelper extends SQLiteOpenHelper
{
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	private String createDbTable;
	private String tableName;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public DatabaseHelper(Context context, String databaseName, int databaseVersion, String tableName, String createDbTable)
	{
		super(context, databaseName, null, databaseVersion);
		this.createDbTable = createDbTable;
		this.tableName = tableName;
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public void onCreate(SQLiteDatabase db)
	{
		db.execSQL(String.format(this.createDbTable, this.tableName));
	}
	
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
	{
		db.execSQL("DROP TABLE IF EXISTS " + this.tableName);
		onCreate(db);
	}
	
}
