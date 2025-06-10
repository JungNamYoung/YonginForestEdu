<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<script>
$(document).ready(() => {
	
    const data = `아이폰(영어: iPhone)은 미국의 기업 애플이 디자    	  
  	  아이폰의 자사 운영체제인 iOS는 구글의 안드로이드와 함께 세계 최대의 모바일 운영 체제(OS) 플랫폼이다.`;
  
    
    $('#id-plain-text').val(data);
    		
    $('#id-public-key').val('${publicKey}');

    $('#id-send').click((event) => {

        event.preventDefault();
        
        const publicKey = '${publicKey}';
        
		const aesKey = CryptoJS.lib.WordArray.random(32).toString();
		const ivKey = CryptoJS.lib.WordArray.random(16).toString();
		
		console.log('aesKey : ' + aesKey);
		console.log('ivKey : ' + ivKey);
  		
         const aesKeyEnc = encRSA(publicKey, aesKey);
         const ivKeyEnc = encRSA(publicKey, ivKey);
         const encryptedData = encAES(aesKey, ivKey, data);
        
        $('#id-aes-key').val(aesKeyEnc);
        $('#id-iv-key').val(ivKeyEnc);        
        $('#id-encrypt-data').val(encryptedData);        
            
        $('#id-form').submit();

    });
});

</script>
