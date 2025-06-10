<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jsencrypt/3.0.0/jsencrypt.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.1.1/crypto-js.min.js"></script>

<script>
     function encRSA(publicKey, plainText){
    	  const utf8Bytes = new TextEncoder().encode(plainText);
    	  const base64PlainText = btoa(String.fromCharCode(...utf8Bytes));
    	  const encrypt = new JSEncrypt();
    	  encrypt.setPublicKey(publicKey);    	 
    	  const encryptedText = encrypt.encrypt(base64PlainText);
    	  
    	  return encryptedText;
      }

     function encAES(aesKey, ivKey, data){

        const aesKeySha = CryptoJS.SHA256(aesKey);      
        const ivUtf8 = CryptoJS.enc.Utf8.parse(ivKey);       
        const ivBytes = CryptoJS.lib.WordArray.create(ivUtf8.words.slice(0,4), 16);
	      
	     const encryptedData = CryptoJS.AES.encrypt(data, aesKeySha, 
	       {
	     	 iv:ivBytes,
	      	 mode:CryptoJS.mode.CBC,
	      	 padding:CryptoJS.pad.Pkcs7
		   }
	     ).toString();
	      
	     return encryptedData;
     }
     
</script>