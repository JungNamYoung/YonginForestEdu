<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/cuda/jsp/cmm/include.tag.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.jquery.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.bootstrap.jsp" %>

<%@ include file="cuda.security.jsp" %>
<%@ include file="rsa.js.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jsencrypt/3.0.0/jsencrypt.min.js"> </script>

</head>
<body>

  <form action="<c:url value='data-rsa.do'/>" id="id-form" method="post">
   	<input type="text" id="id-public-key" size="256"/>
   	<input type="text" id="id-plain-text" value="아이폰(영어: iPhone)은 미국의"/>
	<div>
   		<input type="text" id="id-data-rsa" name="data-rsa" />
   	</div>
    <div>
		<button type="button" id="id-send">submit</button>
	</div>
   </form>
   
</body>
</html>