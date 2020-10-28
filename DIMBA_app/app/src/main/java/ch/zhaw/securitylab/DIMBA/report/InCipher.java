package ch.zhaw.securitylab.DIMBA.report;

/**
 * A class that uses a vigenere cypher (poly alphabetical) to encrypt data.
 */
public class InCipher {
	// -------------------------------------------- //
	// FIELDS
	// -------------------------------------------- //
	
	private char[][] vigenere;
	private String alphabet;
	
	// -------------------------------------------- //
	// CONSTRUCT
	// -------------------------------------------- //
	
	public InCipher(String alphabet) {
		this.alphabet = alphabet;
		createVigenere();
	}
	
	// -------------------------------------------- //
	// ENCRYPT
	// -------------------------------------------- //
	
	private void createVigenere() {
		int len = alphabet.length();
		vigenere = new char[len][len];
		for (int i = 0; i < len; i++) {
			for (int j = 0; j < len; j++) {
				vigenere[i][j] = alphabet.charAt((i + j) % len);
			}
		}
	}
	
	private String createKey(int length, String keyword) {
		// Cleanup keyword
		keyword = keyword.toLowerCase();
		keyword = keyword.replace(" ", "");
		
		StringBuilder key = new StringBuilder(keyword.length());
		int len = keyword.length();
		for (int i = 0, keywordIndex = 0; i < length; i++, keywordIndex++) {
			key.append(keyword.charAt(keywordIndex % len));
		}
		return key.toString();
	}
	
	public String encrypt(String plainText, String keyword) {
		StringBuilder cipher = new StringBuilder();
		int len = plainText.length();
		String key = createKey(len, keyword);
		int pos = 0;

		for (int i = 0; i < len; i++) {
			char row = plainText.charAt(i);
			char col = key.charAt(pos);

			if (alphabet.contains("" + row)) {
				int indexCol = alphabet.indexOf("" + col);
				int indexRow = alphabet.indexOf("" + row);
				cipher.append(vigenere[indexCol][indexRow]);
				pos++;
			} else {
				cipher.append(row);
			}
		}
		return cipher.toString();
	}

//	public String decrypt(String cipherText, String keyword) {
//		StringBuilder message = new StringBuilder();
//		int len = cipherText.length();
//		String key = createKey(len, keyword);
//		int pos = 0;
//
//		for (int i = 0; i < len; i++)
//		{
//			char rowIndicator = cipherText.charAt(i);
//			char col = key.charAt(pos);
//
//			if (alphabet.contains("" + rowIndicator))
//			{
//				int indexCol = alphabet.indexOf("" + col);
//				char[] row = vigenere[indexCol];
//				int indexRow = new String(row).indexOf(rowIndicator);
//				message.append(alphabet.charAt(indexRow));
//				pos++;
//			}
//			else
//			{
//				message.append(rowIndicator);
//			}
//		}
//		return message.toString();
//	}
	
}
