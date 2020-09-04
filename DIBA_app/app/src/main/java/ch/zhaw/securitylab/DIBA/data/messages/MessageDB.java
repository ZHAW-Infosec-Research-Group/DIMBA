package ch.zhaw.securitylab.DIBA.data.messages;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import androidx.annotation.NonNull;
import android.util.Log;
import ch.zhaw.securitylab.DIBA.helpers.DatabaseHelper;
import ch.zhaw.securitylab.DIBA.helpers.Extras;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

public class MessageDB
{
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final String SD_CARD = Environment.getExternalStorageDirectory().getAbsolutePath();
	private static final String DATABASE_NAME = "MessagesDB";
	private static final String TABLE_NAME = "messages";
	private static final int DATABASE_VERSION = 1;
	private static final String CREATE_DB_TABLE =
		"CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, user TEXT NOT NULL, " +
			"message TEXT NOT NULL, creationTime INTEGER NOT NULL, viewType INTEGER NOT NULL);";
	private static final String[] COLUMNS = {
		"_id",
		"message",
		"creationTime",
		"viewType"
	};
	private static final String GROUP_BY = null;
	private static final String HAVING = null;
	private static final String ORDER_BY = "creationTime";
	private static final String LIMIT = null;
	
	// -------------------------------------------- //
	// FIELD
	// -------------------------------------------- //
	
	private SQLiteDatabase db;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public MessageDB(Context context)
	{
		Log.i(Extras.LOG_TAG, DATABASE_NAME);
		DatabaseHelper dbHelper = new DatabaseHelper(context, DATABASE_NAME, DATABASE_VERSION, TABLE_NAME, CREATE_DB_TABLE);
		db = dbHelper.getWritableDatabase();
	}
	
	// -------------------------------------------- //
	// QUERY
	// -------------------------------------------- //
	
	public List<Message> searchMessage(String searchTerm, String username)
	{
		try
		{
			String selection = "message LIKE '%" + searchTerm + "%' AND user = '" + username + "'";
			String[] selectionArgs = {};
			
			Cursor cursor = db.query(false, TABLE_NAME, COLUMNS, selection, selectionArgs, GROUP_BY, HAVING, ORDER_BY, LIMIT);
			return getMessages(cursor);
		}
		catch (Exception e)
		{
			Log.e(Extras.LOG_TAG, "SQL error in searchMessage: ", e);
			return Collections.emptyList();
		}
	}
	
	public List<Message> searchMessage(Message message, String username)
	{
		String selection = "message = ? AND creationTime = ? AND viewType = ? AND user = ?";
		String[] selectionArgs = {message.getMessage(),
			String.valueOf(message.getCreationTime().getTime()),
			Integer.toString(message.getViewType()),
			username};
		Cursor cursor = db.query(false, TABLE_NAME, COLUMNS, selection, selectionArgs, GROUP_BY, HAVING, ORDER_BY, LIMIT);
		return getMessages(cursor);
	}
	
	public boolean addMessage(Message message, String user)
	{
		ContentValues values = new ContentValues();
		values.put("user", user);
		values.put("message", message.getMessage());
		values.put("creationTime", message.getCreationTime().getTime());
		values.put("viewType", message.getViewType());
		return db.insert(TABLE_NAME, null, values) != -1;
	}
	
	public List<Message> getAllMessagesOfUser(String username)
	{
		if (username == null) return new ArrayList<>();
		
		String selection = "user = ?";
		String[] selectionArgs = {username};
		
		Cursor cursor = db.query(false, TABLE_NAME, COLUMNS, selection, selectionArgs, GROUP_BY, HAVING, ORDER_BY, LIMIT);
		
		return getMessages(cursor);
	}
	
	public List<Message> getAll()
	{
		Cursor cursor = db.query(false, TABLE_NAME, COLUMNS, null, null, GROUP_BY, HAVING, ORDER_BY, LIMIT);
		return getMessages(cursor);
	}
	
	@NonNull
	private List<Message> getMessages(Cursor cursor)
	{
		List<Message> messages = new LinkedList<>();
		while (cursor.moveToNext())
		{
			String message = cursor.getString(1);
			Date creationTime = new Date(cursor.getLong(2));
			int viewType = cursor.getInt(3);
			messages.add(new Message(message, viewType, creationTime));
		}
		return messages;
	}
	
	public void insertIfNotExists(List<Message> messages, String user)
	{
		for (Message message : messages) {
			if (!messageExists(message, user)) {
				addMessage(message, user);
			}
		}
	}
	
	private boolean messageExists(Message message, String user)
	{
		int entries = searchMessage(message, user).size();
		if (entries > 1) Log.e(Extras.LOG_TAG, "Message " + message.toString() + " exists multiple times");
		return entries > 0;
	}
	
	public void insertHiddenMessageIfNotExists() {

		String[] hiddenMessage = {
				"Alice: So what can I do to prevent SQL injection vulnerabilities?",
				"Bob: Make sure that you never create SQL statements in the code by using string concatenation and by directly inserting untrusted data, e.g., data received from the user. Instead, use a secure approach to create SQL statements.",
				"Alice: OK… and how can I do this?",
				"Bob: Just use prepared statements and you should be fine.",
				"Alice: Great, thanks and bye!"
		};
		
		String alice = "Alice";
		DateFormat dateFormat = new SimpleDateFormat("yyyy/M/d/H");
		List<Message> messages = new LinkedList<>();
		
		for (int i = 0; i < hiddenMessage.length; i++) {
			Date date = null;
			try {
				date = dateFormat.parse("2020/01/01/"+i);
			} catch (ParseException e) {
				/*Can't happen because of fixed coding*/
			}
			String quote = hiddenMessage[i];
			int viewType;
			
			if(quote.startsWith(alice) || quote.contains("quote")) {
				viewType = Message.VIEW_TYPE_MESSAGE_SENT;
			} else {
				viewType = Message.VIEW_TYPE_MESSAGE_RECEIVED;
			}
			
			messages.add(new Message(quote, viewType, date));
		}
		insertIfNotExists(messages, alice);
	}
	
	// -------------------------------------------- //
	// META - RESET
	// -------------------------------------------- //
	
	public void metaResetAllMessages() {
		String whereClause = "'1'='1'";
		String[] whereArgs = {};
		
		db.delete(TABLE_NAME, whereClause, whereArgs);
	}

}
