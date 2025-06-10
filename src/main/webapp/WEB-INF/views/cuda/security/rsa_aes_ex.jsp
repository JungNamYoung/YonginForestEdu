<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/cuda/jsp/cmm/include.tag.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.jquery.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.bootstrap.jsp" %>

<%@ include file="cuda.security.jsp" %>
<%@ include file="rsa_aes_ex.js.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>암호화 테스트 : rsa - aes</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jsencrypt/3.0.0/jsencrypt.min.js"> </script>

</head>
<body>
  <form action="<c:url value='data-rsa-aes-ex.do'/>" id="id-form" method="post">
	  <div class="d-linline-flex w-25 offset-1">
	  	<div class="mt-2">
		   	<label class="form-label fw-bold">RSA - 공개키</label>
		   	<input type="text" id="id-public-key" size="256" class="form-control"/>
	   	</div>
	   	
	   	<div class="mt-2">
		   	<label class="form-label fw-bold">데이타 값</label>
			<textarea id="id-plain-text" class="form-control" rows="5"> </textarea>
	   	</div>
	   	
	   	<div class="mt-2">
		   	<label class="form-label fw-bold">aes-key</label>
		   	<input type="text" id="id-aes-key" name="aes-key" class="form-control"/>
	   	</div>
	   	
	   	<div class="mt-2">
		   	<label class="form-label fw-bold">iv-key</label>	   	
		   	<input type="text" id="id-iv-key" name="iv-key" class="form-control"/>
	   	</div>
	   	
	   	<div class="mt-2">
		   	<label class="form-label fw-bold">encrypt data</label>
		   	<input type="text" id="id-encrypt-data" name="encrypt-data" class="form-control"/>
	   	</div>	   	
	   		   	
	   	<button type="button" id="id-send" class="btn btn-outline-primary mt-2">submit</button>
	  </div> 	
   </form>
</body>
</html>