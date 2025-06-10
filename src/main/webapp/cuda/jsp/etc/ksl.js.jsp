
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="<c:url value="/bundle/bootstrap/bootstrap.bundle.min.js"/>" crossorigin="anonymous"></script>
<%-- <script src="<c:url value="/layout/feather.min.js"/>" crossorigin="anonymous"></script> --%>
<%@ include file="/cuda/jsp/js/Define.js.jsp" %>
<%@ include file="/cuda/jsp/cmm/include.js.jsp"%>

<script src="<c:url value="/js/cuda/Nuria.js"/>" ></script>

<script>
	SideMenu.init();
	
	var url = '${pageContext.request.contextPath}' + '${WrapInfo.getURL()}';
	
	const result = '${WrapInfo.currentURI()}';
	
	if(result !== '')
		_Paging.init('${WrapInfo.currentURI()}', url);
	
	var _XPath = new XPath('<c:url value="/"/>');
	
</script>