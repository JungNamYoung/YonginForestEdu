package cuda.web.security.web;

import java.nio.charset.StandardCharsets;
import java.security.PrivateKey;
import java.util.Base64;
import java.util.Map;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cuda.web.security.util.RSAKey;
import cuda.web.security.util.Security;


@Controller
public class SecurityController {

	Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/cuda-security/form-rsa-aes.do")
	public String enc(HttpServletRequest request) {
		try {
			RSAKey rsa = new RSAKey();
			String privateKey = rsa.getPrivateKey();
			String publicKey = rsa.getPublicKey();

			HttpSession session = request.getSession();
			
			session.setAttribute("privateKey", privateKey);

			request.setAttribute("publicKey", publicKey);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "cuda/security/rsa_aes_ex";
	}

	@RequestMapping(value = "/cuda-security/form-rsa-aes-ex.do")
	public String formViewRsaAesEx(HttpServletRequest request) {
		try {
			RSAKey rsa = new RSAKey();
			String privateKey = rsa.getPrivateKey();
			String publicKey = rsa.getPublicKey();

			HttpSession session = request.getSession();
			session.setAttribute("privateKey", privateKey);

			request.setAttribute("publicKey", publicKey);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "cuda/security/rsa_aes_ex";
	}

	@RequestMapping(value = "/cuda-security/form-aes.do")
	public String formViewAes(HttpServletRequest request) {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "cuda/security/aes";
	}

	@RequestMapping(value = "/cuda-security/form-rsa.do")
	public String encEx(HttpServletRequest request, HttpSession session) {
		try {
			RSAKey rsa = new RSAKey();
			String privateKey = rsa.getPrivateKey();
			String publicKey = rsa.getPublicKey();

			session.setAttribute("privateKey", privateKey);
			request.setAttribute("publicKey", publicKey);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "cuda/security/rsa";
	}

	@PostMapping(value = "/cuda-security/data-aes.do")
	public String dataAes(@RequestParam Map<String, String> payload, HttpSession session, HttpServletRequest request) {
		try {
			String encryptedData = payload.get("data-rsa");

			String originalText = Security.deAES(Security.g_aseKey, Security.g_ivKey, encryptedData);

			LOGGER.debug("복호화된 데이터 : " + originalText);

			request.setAttribute("text", originalText);
			return "security/success";

		} catch (Exception e) {
			e.printStackTrace();
			return "복호화 실패";
		}
	}

	@GetMapping(value = "/cuda-security/data-aes-ex.do")
	public String dataAesEx(HttpServletRequest request) {
		try {

			String str = Security.enAES(Security.g_aseKey, Security.g_ivKey,
					"아래는 주어진 복호화 함수(deAES)와 짝을 이루는 AES 암호화 함수입니다. 이 함수는 AES-256-CBC 모드를 사용하여 문자열 데이터를 암호화하고, Base64로 인코딩하여 반환합니다.");

			String str1 = Security.deAES(Security.g_aseKey, Security.g_ivKey, str);

			request.setAttribute("text", str1);
			request.setAttribute("etcKey", str);

			return "cuda/security/success";

		} catch (Exception e) {
			e.printStackTrace();
			return "복호화 실패";
		}
	}


	@PostMapping(value = "/cuda-security/data-rsa-aes.do")
	public String dataRsaAes(@RequestParam Map<String, String> payload, HttpSession session) {
		try {
			String privateKeyBase64 = (String) session.getAttribute("privateKey");
			byte[] privateKeyBytes = Base64.getDecoder().decode(privateKeyBase64);

			PrivateKey privateKey = RSAKey.convertBytesToPrivateKey(privateKeyBytes);

			String encryptedAesKey = payload.get("encryptedAesKey");
			Cipher rsaCipher = Cipher.getInstance("RSA");
			rsaCipher.init(Cipher.DECRYPT_MODE, privateKey);

			byte[] arr = Base64.getDecoder().decode(encryptedAesKey);

			byte[] aesKey = rsaCipher.doFinal(arr);

			String encryptedData = payload.get("encryptedData");
			String aesIv = payload.get("aesIv");

			IvParameterSpec ivSpec = new IvParameterSpec(Base64.getDecoder().decode(aesIv));
			SecretKeySpec aesKeySpec = new SecretKeySpec(aesKey, "AES");

			Cipher aesCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			aesCipher.init(Cipher.DECRYPT_MODE, aesKeySpec, ivSpec);

			byte[] decryptedData = aesCipher.doFinal(Base64.getDecoder().decode(encryptedData));

			String decryptedData1 = new String(decryptedData);

			LOGGER.debug("복호화된 데이터 : " + decryptedData1);
			return "";
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	@PostMapping(value = "/cuda-security/data-rsa-aes-ex.do")
	public String dataRsaAesEx(@RequestParam Map<String, String> payload, HttpSession session,
			HttpServletRequest request) {
		try {
			String encryptedData = payload.get("encrypt-data");
			String aesKeyEnc = payload.get("aes-key");
			String ivKeyEnc = payload.get("iv-key");

			String privateKey = (String) session.getAttribute("privateKey");

			String aesKey = Security.deRSA(privateKey, aesKeyEnc);
			String ivKey = Security.deRSA(privateKey, ivKeyEnc);

			String data = Security.deAES(aesKey, ivKey, encryptedData);

			request.setAttribute("text", data);
			request.setAttribute("aesKey", aesKey);
			request.setAttribute("ivKey", ivKey);

			return "cuda/security/success";

		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	@RequestMapping(value = "/cuda-security/data-rsa.do")
	public String decryptDataEx(HttpServletRequest request, HttpSession session) {
		try {
			String privateKey = (String) session.getAttribute("privateKey");

			if (privateKey == null) {
				throw new IllegalStateException("개인키가 세션에 없습니다.");
			}

			String encryptedData = request.getParameter("data-rsa");
			String decryptedData = Security.deRSA(privateKey, encryptedData);
			LOGGER.debug("복호화된 데이터: " + decryptedData);
			request.setAttribute("text", decryptedData);

			return "cuda/security/success";

		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/cuda-security/sec-test.do")
	public String secTest(HttpServletRequest request, HttpSession session) {

		return "cuda/security/test/sec_test";
	}

	@RequestMapping(value = "/cuda-security/sec-test-resp.do")
	public String secTestResp(HttpServletRequest request, HttpSession session) {

		String base64Str = request.getParameter("data-rsa");

		byte[] decodedBytes = Base64.getDecoder().decode(base64Str);

		String originalText = new String(decodedBytes, StandardCharsets.UTF_8);

		LOGGER.debug("복원된 문자열: " + originalText);

		request.setAttribute("text", originalText);

		return "cuda/security/test/sec_test";
	}
}
