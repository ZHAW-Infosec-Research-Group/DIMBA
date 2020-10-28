package ch.zhaw.securitylab.DIMBA.helpers;

import android.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * The class to en- and de-crypt remember me credentials.
 */
public class RememberMe
{
	// -------------------------------------------- //
	// CONSTANTS
	// -------------------------------------------- //
	
	private static final String REMEMBER_ME = "rememberMe";
	
	// -------------------------------------------- //
	// ENCRYPT & DECRYPT
	// -------------------------------------------- //
	
	public static String encrypt(String string)
	{
		return convert(string, Cipher.ENCRYPT_MODE);
	}
	
	public static String decrypt(String string)
	{
		return convert(string, Cipher.DECRYPT_MODE);
	}
	
	private static String convert(String string, int mode) {
		// Create
		String afterText = null;
		SecretKey secretKey = getSecretKey();
		Cipher cipher = getCipher(mode, secretKey);
		
		byte[] bytes = string.getBytes();
		if (mode == Cipher.DECRYPT_MODE) {
			bytes = Base64.decode(string, Base64.DEFAULT);
		}
		
		try {
			// Decrypt
			byte[] afterBytes = cipher.doFinal(bytes);
			if (mode == Cipher.ENCRYPT_MODE) {
				afterText = Base64.encodeToString(afterBytes, Base64.NO_WRAP);
			} else {
				afterText = new String(afterBytes);
			}
		}
		catch (Exception ex)
		{
			throw new RuntimeException(ex);
		}
		
		// Return
		return afterText;
	}
	
	// -------------------------------------------- //
	// KEY & CIPHER
	// -------------------------------------------- //
	
	private static SecretKey getSecretKey()
	{
		String PBE_ALGORITHM = "PBEWithSHA256And256BitAES-CBC-BC";
		int NUM_OF_ITERATIONS = 1000;
		int KEY_SIZE = 256;
		byte[] salt = "ababababababababababab".getBytes();
		
		SecretKey secretKey = null;
		
		try
		{
			PBEKeySpec pbeKeySpec = new PBEKeySpec(REMEMBER_ME.toCharArray(), salt, NUM_OF_ITERATIONS, KEY_SIZE);
			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(PBE_ALGORITHM);
			SecretKey tempKey = keyFactory.generateSecret(pbeKeySpec);
			secretKey = new SecretKeySpec(tempKey.getEncoded(), "AES");
		}
		catch (Exception ex)
		{
			throw new RuntimeException(ex);
		}
		
		return secretKey;
	}
	
	private static Cipher getCipher(int decryptMode, SecretKey secretKey)
	{
		byte[] iv = "1234567890abcdef".getBytes();
		String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
		
		IvParameterSpec ivSpec = new IvParameterSpec(iv);
		Cipher cipher = null;
		
		try
		{
			cipher = Cipher.getInstance(CIPHER_ALGORITHM);
			cipher.init(decryptMode, secretKey, ivSpec);
		}
		catch (Exception ex)
		{
			throw new RuntimeException(ex);
		}
		
		return cipher;
	}
	
}
