package ch.zhaw.securitylab.DIBA.data.metasettings;

import androidx.room.TypeConverter;

public class ConverterDifficulty {
	
	@TypeConverter
	public static String toString(Difficulty difficulty) {
		return difficulty.toString();
	}
	
	@TypeConverter
	public static int toInt(String difficulty) {
		return difficulty == null ? null : Difficulty.toInt(difficulty);
	}
}
