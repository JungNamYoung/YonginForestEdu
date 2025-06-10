<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	function CudaWS(domain, type) {
		
		const serverName='<%=request.getServerName()%>';
		const port='<%=request.getServerPort()%>';
		const rootPath='<%=request.getContextPath()%>';
		const secure='<%=request.isSecure()%>';

		const ws = Define.WS;

		if (secure === 'true') {
			ws = Define.WSS;
		}

		const url = ws + '://' + serverName + ':' + port + rootPath	+ '/cuda-ws/' + domain + '/' + type;

		const _Socket = new WebSocket(url);

		_Socket.onopen = function(event) {
			console.log("_Socket - open ");
		}

		_Socket.onmessage = function(event) {
			console.log("_Socket - message " + event.data);

			_Server = JSON.parse(event.data);

			if (_Server.msg === Define.CHATTING) {
				if (_Self.isChattingAni()) {
					_Self.stop();
					_Self.start();
				} else {
					_Self.start();
				}
			} else if (_Server.msg === Define.NOT_CHATTING) {

				if (_Img === null)
					_Img = _Chatbot.insertText(_Chatbot.camera);

				_Self.imgLoading(true);
			}

			else if (_Server.msg === Define.MENU) {

				_Menu = _Server.data;

				_Self.chatting();

				var select = _Self.selectMenu(_Menu, _currentGroup);
				_selects.push(select);

				_Chatbot.insertText(_Chatbot.left, _Self
						.mkContents(select.viewVO)
						+ _Self.makeMenu(_Menu, select.childGroup));

				_currentGroup = select.childGroup;

			} else if (_Server.msg === Define.SING_CODE) {

				_signCode = JSON.parse(_Server.data);

				if (_signCode.signCode === 'HEC_R997'
						|| _signCode.signCode === 'HEC_R998'
						|| _signCode.signCode === 'HEC_R999')
					return;

				_Self.setSignCode(_signCode.signCode);

			}
		}

		_Socket.onerror = function(event) {
			console.log("_Socket - error " + event);
		}
	}
</script>