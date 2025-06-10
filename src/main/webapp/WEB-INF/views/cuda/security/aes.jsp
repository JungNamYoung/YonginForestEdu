<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/cuda/jsp/cmm/include.tag.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.jquery.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.bootstrap.jsp" %>

<%@ include file="cuda.security.jsp" %>
<%@ include file="aes.js.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jsencrypt/3.0.0/jsencrypt.min.js"> </script>

</head>
<body>

  <form action="<c:url value='data-aes.do'/>" id="id-form" method="post">
   	<input type="text" id="id-public-key" size="256"/>
   	<input type="text" id="id-plain-text" value="안녕~ young"/>
	<div>
   		<input type="text" id="id-data-rsa" name="data-rsa" />
   	</div>
    <div>
		<button type="button" id="id-send">submit</button>
	</div>
   </form>
   
</body>
</html>