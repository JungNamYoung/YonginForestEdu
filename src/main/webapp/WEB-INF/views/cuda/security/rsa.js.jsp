<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
$(document).ready(() => {
   $('#id-public-key').val('${publicKey}');
   
   $('#id-send').click((event) => { 
      event.preventDefault();
   
      const publicKey = $('#id-public-key').val();
      const plainText = $('#id-plain-text').val();

//      const utf8Bytes = new TextEncoder().encode(plainText);
//      const base64PlainText = btoa(String.fromCharCode(...utf8Bytes));
//       const encrypt = new JSEncrypt();
//       encrypt.setPublicKey(publicKey); 
//       const encryptedText = encrypt.encrypt(base64PlainText);

        const encryptedText  = encRSA(publicKey, plainText);

      if(encryptedText){
        $('#id-data-rsa').val(encryptedText);
        $('form').submit();
      }else{
        alert('암호화에 실패했습니다');
      }
    });
      
  });
  

</script>