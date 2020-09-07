package ch.zhaw.securitylab.DIBA.data.metasettings;

public enum Difficulty {

//	LEVEL_1,
//	LEVEL_2,
//	LEVEL_3,
//	LEVEL_4,
//	LEVEL_5

	LEVEL_1("1"),
	LEVEL_2("2"),
	LEVEL_3("3"),
	LEVEL_4("4"),
	LEVEL_5("5");

	private final String text;

	Difficulty(final String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return text;
	}

	public static int toInt(String text) {
		if (text.equals("1")) return 1;
		if (text.equals("2")) return 2;
		if (text.equals("3")) return 3;
		if (text.equals("4")) return 4;
		if (text.equals("5")) return 5;
		return 0;
	}

	public static Difficulty fromString(String text) {
		for (Difficulty d : Difficulty.values()) {
			if (d.text.equalsIgnoreCase(text)) {
				return d;
			}
		}
		return null;
	}

}
