package cuda.web.security.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.util.Arrays;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class Security {
	
	public static String g_aseKey = "key-12";
	public static String g_ivKey = "1234567890";

	public static String deAES(String aseKey, String ivKey, String encryptedData) {
		try {
			byte[] ivBytes = ivKey.getBytes(StandardCharsets.UTF_8);
			ivBytes = Arrays.copyOf(ivBytes, 16);
			IvParameterSpec ivSpec = new IvParameterSpec(ivBytes);

			MessageDigest sha = MessageDigest.getInstance("SHA-256");
			byte[] keyBytes = sha.digest(aseKey.getBytes(StandardCharsets.UTF_8));
			SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);

			byte[] decodedData = Base64.getDecoder().decode(encryptedData);
			byte[] originalBytes = cipher.doFinal(decodedData);
			String originalText = new String(originalBytes, StandardCharsets.UTF_8);

			return originalText;

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return null;
	}

	public static String enAES(String aesKey, String ivKey, String plainText) {
		try {
			byte[] ivBytes = ivKey.getBytes(StandardCharsets.UTF_8);
			ivBytes = Arrays.copyOf(ivBytes, 16);
			IvParameterSpec ivSpec = new IvParameterSpec(ivBytes);

			MessageDigest sha = MessageDigest.getInstance("SHA-256");
			byte[] keyBytes = sha.digest(aesKey.getBytes(StandardCharsets.UTF_8));
			SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);

			byte[] encryptedBytes = cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8));

			return Base64.getEncoder().encodeToString(encryptedBytes);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return null;
	}
	
	public static String doAES(String plainText) {		
		
		return enAES(g_aseKey, g_ivKey, plainText);
	}
	
	public static String doDecAES(String text) {
		return deAES(g_aseKey, g_ivKey, text);
	}

	public static String deRSA(String privateKey, String encryptedData) {

		try {
			RSAKey rsa = new RSAKey();
			PrivateKey privKey = rsa.convertBytesToPrivateKey(Base64.getDecoder().decode(privateKey));

			Cipher cipher = Cipher.getInstance("RSA");
			cipher.init(Cipher.DECRYPT_MODE, privKey);
			byte[] decryptedBytes = cipher.doFinal(Base64.getDecoder().decode(encryptedData));

			String base64DecryptedData = new String(decryptedBytes, StandardCharsets.UTF_8);

			byte[] utf8Bytes = Base64.getDecoder().decode(base64DecryptedData);
			String decryptedData = new String(utf8Bytes, StandardCharsets.UTF_8);

			return decryptedData;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "";
	}

}
