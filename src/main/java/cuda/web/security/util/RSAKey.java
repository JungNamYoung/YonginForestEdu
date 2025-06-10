package cuda.web.security.util;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Base64;
import java.security.KeyFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public class RSAKey {
	private PublicKey publicKey;
	private PrivateKey privateKey;

	public RSAKey() throws Exception {
		KeyPairGenerator keyGen = KeyPairGenerator.getInstance("RSA");
		keyGen.initialize(2048);
		
		KeyPair pair = keyGen.generateKeyPair();
		
		this.publicKey = pair.getPublic();
		this.privateKey = pair.getPrivate();
	}

	public String getPublicKey() {
		return Base64.getEncoder().encodeToString(publicKey.getEncoded());
	}

	public String getPrivateKey() {
		return Base64.getEncoder().encodeToString(privateKey.getEncoded());
	}

	public PrivateKey getPrivateKeyObject() {
		return privateKey;
	}

	public static PrivateKey convertBytesToPrivateKey(byte[] privateKeyBytes) throws Exception {
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");
		PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(privateKeyBytes);
		return keyFactory.generatePrivate(keySpec);
	}
	
	public static PublicKey convertBytesToPublicKey(byte[] publicKeyBytes) throws Exception{
	   KeyFactory keyFactory = KeyFactory.getInstance("RSA");
	   X509EncodedKeySpec keySpec = new X509EncodedKeySpec(publicKeyBytes);
	   return keyFactory.generatePublic(keySpec);
	}

}