
function Json(_url, onJson, _api){	

	this.sendJson = function(fileVO){
	
		var api;
	
		if(_api != undefined){
			api = _api;
		}
		else{
			api = 'cudaJson';
		}
			
		const obj = {		
		
			//url: _url + '/' + 'cudaJson' + Define.EXT_API,
			url: _url + '/' + api + Define.EXT_API,
			type: Define.POST,		
			contentType: Define.APP_JSON_EX,
			data: JSON.stringify(fileVO),
			dataType: Define.JSON,
			success: function(data){							
				console.log("Json.sendJson() : " + JSON.stringify(data.result));				
				onJson(data.result);
			},
			error: function(error){
				console.log("error : upload");
			}
		};
			
		$.ajax(obj);
	}
	
}

function JsonEx(){
	this.send = function(url, onJson, vo){	
		const obj = {
			url: url,
			type: Define.POST,		
			contentType: Define.APP_JSON_EX,
			data: JSON.stringify(vo),
			dataType: Define.JSON,
			success: function(data){							
				console.log("success : " + JSON.stringify(data));				
				onJson(data);
			},
			error: function(error){
				console.log("error / json / send");
			}
		};		
		
		$.ajax(obj);
	}
}
