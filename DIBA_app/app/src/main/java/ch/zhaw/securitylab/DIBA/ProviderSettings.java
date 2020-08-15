package ch.zhaw.securitylab.DIBA;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import ch.zhaw.securitylab.DIBA.helpers.DatabaseHelper;

/**
 * A provider class for the settings database. This way we store many of the settings available in settings activity.
 */
public class ProviderSettings extends ContentProvider {

	// -------------------------------------------- //
	// CONSTANT
	// -------------------------------------------- //
	
	public static final String FIELD_PACKAGE = "package";
	public static final String FIELD_CLASS = "class";
	public static final String FIELD_AUTO_UPDATE = "autoupdate";
	
	private static final String PROVIDER_NAME = "ch.zhaw.securitylab.DIBA.settings";
	private static final String URL = "content://" + PROVIDER_NAME + "/setting";
	public static final Uri CONTENT_URI = Uri.parse(URL);
	
	private static final String DATABASE_NAME = "Settings";
	private static final String TABLE_NAME = "setting";
	private static final int DATABASE_VERSION = 1;
	private static final String CREATE_DB_TABLE =
		"CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT NOT NULL, class TEXT NOT NULL" +
			", autoupdate INTEGER NOT NULL"
			+ ");";
	
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private SQLiteDatabase db;
	
	// -------------------------------------------- //
	// CONSTRUCT & CREATE
	// -------------------------------------------- //
	
	public ProviderSettings() { }
	
	@Override
	public boolean onCreate() {

		Context context = getContext();
		
		DatabaseHelper dbHelper = new DatabaseHelper(context, DATABASE_NAME, DATABASE_VERSION, TABLE_NAME, CREATE_DB_TABLE);
		this.db = dbHelper.getWritableDatabase();
		
		// Populate with settings
		ContentValues values = new ContentValues();
		values.put(FIELD_PACKAGE, "ch.zhaw.securitylab.DIBA");
		values.put(FIELD_CLASS, "ch.zhaw.securitylab.DIBA.activity.pay.ActivityAuthPayAccept");
		values.put(FIELD_AUTO_UPDATE, 0);
		
		this.db.insert(TABLE_NAME, null, values);
		
		return this.db != null;
	}
	
	// -------------------------------------------- //
	// OVERRIDE
	// -------------------------------------------- //
	
	@Override
	public Uri insert(Uri uri, ContentValues values) {

		long rowID = db.insert(TABLE_NAME, "", values);
		if (rowID > 0) {
			Uri _uri = ContentUris.withAppendedId(CONTENT_URI, rowID);
			getContext().getContentResolver().notifyChange(_uri, null);
			return _uri;
		}
		
		throw new SQLException("Failed to add a record into " + uri);
	}
	
	@Override
	public Cursor query(Uri uri, String[] projection, String selection,
						String[] selectionArgs, String sortOrder)
	{
		SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
		qb.setTables(TABLE_NAME);
		qb.appendWhere( "_id=1");
		Cursor c = qb.query(db,	projection,	selection, selectionArgs,null, null, sortOrder);
		c.setNotificationUri(getContext().getContentResolver(), uri);
		return c;
	}
	
	@Override
	public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
		int count = db.update(TABLE_NAME, values, selection, selectionArgs);
		getContext().getContentResolver().notifyChange(uri, null);
		return count;
	}
	
	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		throw new UnsupportedOperationException("Rows can't be deleted.");
	}
	
	@Override
	public String getType(Uri uri)
	{
		throw new UnsupportedOperationException("Not yet implemented");
	}
	
	// -------------------------------------------- //
	// CONVENIENCE
	// -------------------------------------------- //
	
	private static Cursor getCursor() {
		Uri settings = Uri.parse("content://ch.zhaw.securitylab.DIBA.settings");
		CursorLoader loader = new CursorLoader(DIBA.get(), settings,null,null,
			null,null);
		return loader.loadInBackground();
	}
	
	private static String getCursorString(Cursor cursor, String key) {
		return cursor.getString(cursor.getColumnIndex(key));
	}
	
	public static String[] getContent()
	{
		Cursor cursor = getCursor();
		
		String packageName = null;
		String className = null;
		String autoUpdate = null;
		if (cursor.moveToFirst()) {
			packageName = getCursorString(cursor, FIELD_PACKAGE);
			className   = getCursorString(cursor, FIELD_CLASS);
			autoUpdate  = getCursorString(cursor, FIELD_AUTO_UPDATE);
		}
		
		return new String[]{packageName, className, autoUpdate};
	}
	
	public static boolean isAutoUpdate()
	{
		Cursor cursor = getCursor();
		cursor.moveToFirst();
		int autoUpdate = cursor.getInt(cursor.getColumnIndex(FIELD_AUTO_UPDATE));
		return autoUpdate == 1;
	}
	
}
