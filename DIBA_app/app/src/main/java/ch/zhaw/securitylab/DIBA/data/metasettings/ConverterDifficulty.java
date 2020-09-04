package ch.zhaw.securitylab.DIBA.data.metasettings;

import androidx.room.TypeConverter;

public class ConverterDifficulty {
	
	@TypeConverter
	public static String toString(Difficulty difficulty) {
		return difficulty == null ? null : difficulty.toString();
	}
	
	@TypeConverter
	public static Difficulty toDifficulty(String difficulty) {
		return difficulty == null ? null : Difficulty.fromString(difficulty);
	}
}
