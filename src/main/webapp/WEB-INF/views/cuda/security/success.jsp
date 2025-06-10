<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/cuda/jsp/cmm/include.tag.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.jquery.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.bootstrap.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	$(document).ready(() => {		
		$('#id-text').text(`${text}`);
		
		$('#id-aes-key').text(`${aesKey}`);
		
		$('#id-iv-key').text(`${ivKey}`);
		
		$('#id-etc').text(`${etcKey}`);
	});
</script>

</head>
<body>

    <h1>log</h1>
	<div id="id-text">
	</div>
	
	<div id="id-aes-key">
	</div>
	
	<div id="id-iv-key">
	</div>
	
    <div id="id-etc">
	</div>
	
</body>
</html>