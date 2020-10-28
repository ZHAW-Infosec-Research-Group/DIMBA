package ch.zhaw.securitylab.DIMBA.data.metasettings;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import android.text.TextUtils;

@Entity
public class Metasettings {
	
	@PrimaryKey()
	private int uid;
	public int getUid() { return this.uid; }
	public void setUid(int uid) { this.uid = uid; }
	
	private String ip;
	public String getIp() { return this.ip; }
	public void setIp(String ip) { this.ip = ip; }
	
//	private Difficulty difficulty;
	private int difficulty;
//	public Difficulty getDifficulty() { return this.difficulty; }
	public int getDifficulty() { return this.difficulty; }
//	public void setDifficulty(Difficulty difficulty) { this.difficulty = difficulty; }
	public void setDifficulty(int difficulty) { this.difficulty = difficulty; }

	private int timeout;
	public int getTimeout()
	{
		return timeout;
	}
	public void setTimeout(int timeout)
	{
		this.timeout = timeout;
	}
	
	public Metasettings(String ip, int difficulty, int timeout) {
		this.ip = ip;
		this.difficulty = difficulty;
		this.timeout = timeout;
	}
	
	public void setDifficulty(String difficulty) {
		if (TextUtils.isEmpty(difficulty)) throw new RuntimeException("difficulty must be !empty, was " + difficulty);
		setDifficulty(Difficulty.toInt(difficulty));
	}
	
}
