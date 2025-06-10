<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>

/*
	serverName:'127.0.0.1',
	port:'8080',
	rootPath:'/cnuh',
	rootPathEx:'/cnuh/',
	secure:'false',
	ws : ws | wss,
*/

const App = {
	serverName:'<%=request.getServerName()%>',
	port:'<%=request.getServerPort()%>',
	rootPath:'<%=request.getContextPath()%>',
	rootPathEx:'<%=request.getContextPath()%>/',
	secure:'<%=request.isSecure()%>',
	ws : Define.WS,
	http:Define.HTTP,
	ws_url:'',
	http_url:'',
}

if (App.secure === 'true') {
	App.ws = Define.WSS;
	App.http = Define.HTTPS;
}

//	ws://127.0.0.1:8080/cnuh/cuda-ws/
//	wss://127.0.0.1:8080/cnuh/cuda-ws/
App.ws_url = App.ws + Define.COLON_SLASH + App.serverName + Define.COLON + App.port+ App.rootPath + Define.CUDA_WS;

//wss://127.0.0.1:8080/cnuh/
App.ws_url_simple = App.ws + Define.COLON_SLASH + App.serverName + Define.COLON + App.port+ App.rootPath + Define.SLASH;

//	http://127.0.0.1:8080/cnuh/
//	https://127.0.0.1:8080/cnuh/
App.http_url = App.http + Define.COLON_SLASH + App.serverName + Define.COLON + App.port+ App.rootPath + Define.SLASH;

</script>