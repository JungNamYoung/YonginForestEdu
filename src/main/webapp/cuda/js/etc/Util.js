function Util(_url){	

	this.hhmmss = function(){	
		var today = new Date();		
		var text = `${today.getHours()}:${today.getMinutes()}:${today.getSeconds()}:${today.getMilliseconds()}`;		
		return text; 
	}
	
	this.addInput = function(formName, tName, value, idForm){

		var theForm = document.forms[formName];
		
		if(theForm === undefined){
		 theForm =  document.createElement("form");		 
		 document.body.appendChild(theForm);		 
		 	theForm.setAttribute("name", formName);
		 	theForm.setAttribute("id", idForm);
		}
		 
		if ( theForm.elements[tName] == null){
			var input   = document.createElement(Define.INPUT); 
			input.type   = 'hidden'; 
			input.name  = tName; 
			input.id  = tName; 
			input.value  = value; 
			theForm.appendChild(input); 
		}else{
			$("#" + tName).val(value);
		}
	}
	
	//	this.getParam = function(formName, child_all){
	this.getParam = function(formName) {
	
		var theForm = document.forms[formName];
		
		var list = null;
		
		//		if(child_all === true){
		var list1 = $(theForm).find(Define.INPUT);
		var list2 = $(theForm).find('select');

		list = $.merge(list1, list2);
		//		}
		//		else{
		//			var list1 = $(theForm).children(Define.INPUT);
		//			var list2 = $(theForm).children('select');
		//			
		//			list = $.merge(list1, list2);
		//		}
		
		var map = new Map();
		
		list.each(function(index, item){		
			var a = $(item).val();
			a = $(item).attr('name');
			
			//param.a = $(item).val();
			//a = '';
			
			map.set(a, $(item).val());
		});
		
		var param = Object.fromEntries(map);
		
		return param;
	}
	
	this.toObject = function(data){
		
		const reg1 = /{[^{}]+}/g;
		const match1 = data.match(reg1);
		
		if(data.length !== match1[0].length){
			var data1 = data.replace(match1, '');		
			data = data1;		
		}
	
		//const regexp = /\w+[=]/g;
		const regexp=/[A-Za-z0-9_./]+[=]/g;
		const matches = data.match(regexp);
		const map = new Map();
		
		for(var index = 0; index < matches.length; ++index){
				
			var next = index + 1;
			
			var begin = data.indexOf(matches[index]) + matches[index].length;
			var end = data.indexOf(matches[next]);

			if(next == matches.length){
				end = data.length - 1;
			}
			
			var value = data.substring(begin, end);
			
			value = value.trimRight();
			
			iValue = value.indexOf(',', value.length - 1);
			
			if(next !== matches.length){
				if(iValue !== -1){
					value = value.substring(0, iValue);
				}
			}
			
			var key = matches[index].substring(0, matches[index].length - 1);
			
			map.set(key, value);
				
		}		
		
		var ret = Object.fromEntries(map);
		
		return ret;

	}
		
	this.setEnable = function(inputs, flag){		
		
		for(var index = 0; index < inputs.length; ++index){			
			var id = inputs[index];		
			
			if(flag === true)	
				$(id).attr(Define.DISABLED, false);
			else
				$(id).attr(Define.DISABLED, true);
		}
	}
	
	this.resetText = function(inputs){
		for(var index = 0; index < inputs.length; ++index){
			$(inputs[index]).val(Define.STR_BLANK);
		}
	}
	
	this.resetChild = function(id) {
		
		var list = $(id).find(Define.INPUT);

		list.each(function(index, item) {
			$(item).val(Define.STR_BLANK);
		});
	}

	this.append_ex = function (j_question, question, j_label, label){

		j_question.empty();
		//j_label.empty();
	
		var listLabel = label.split(' ');		
		var listQuestion = question.split(' ');
		
		if(listLabel.length !== listQuestion.length){
			console.log('error ---------- size() ');
		}
	
		listLabel.forEach(function(item, index){
		
			var htmlQuestion = '';
			var htmlLabel = '';
			
			if(item === 'O'){
				htmlQuestion = `<span class="label suggest-tag suggest-gray">${listQuestion[index]}</span>`;
				//htmlLabel = `<span class="label suggest-tag suggest-gray">${item}</span>`;
			}
			else{
				htmlQuestion = `<span class="label suggest-tag suggest-blue">${listQuestion[index]}</span>`;
				//htmlLabel = `<span class="label suggest-tag suggest-blue">${item}</span>`;
			}
			
			j_question.append(htmlQuestion);
			//j_label.append(htmlLabel);
			
		});
	}

	this.post = function(url, param, to_url){	  
		$.post(url, param, function(data, status){
			//if(data.result === Define.COUNT_1)
			//{
			location.href = to_url + '?' + _Paging.getScroll();
			//}
		});	
	}
	
	this.removeTag = function(str){
		str = str.replace('</p>', '');
		str = str.replace('<p>', '');
		str = str.replace('&nbsp;', '');
//		str.trim();
		
		return str;
	}
	
	this.replaceAll = function(str, search, change){
	
		var ret = str.split(search).join(change);
		
		return ret;
	}
	
	this.replaceEx = function(data){	
	
		data = this.replaceAll(data, '<p>', Define.STR_BLANK);
		data = this.replaceAll(data, '</p>', Define.STR_BLANK);
		data = this.replaceAll(data, '<br>', Define.STR_BLANK);
	
		return data;
	}
	
	this.path = function(){	
		var url = _url.split(Define.SLASH);	
		var result = '://' + url[2] + Define.SLASH + url[3] + Define.SLASH;   // ://127.0.0.1:28080/UtilSocket/		
		return result;
	}
	
	this.path_ex = function(){	
		var url = _url.split(Define.SLASH);	
		var result = '//' + url[2] + Define.SLASH + url[3] + Define.SLASH;   // //127.0.0.1:28080/UtilSocket/		
		return result;
	}
		
	this.pathEx = function(){
		var urls = _url.split(Define.SLASH);
		return urls[0] + this.path_ex();
	}

	this.pathExt = function(str){
		var arr = str.split(Define.SEMI_COLON);
		
		if(arr.length > 1){
			return arr[Define.INDEX_0];
		}
		
		return '';
	}
		
	this.fullPath = function(){
		var url = _url.split(Define.SLASH);
		return 'http' + '://' + url[2];
	}
	
	this.setValue = function(item, id, url){
		if(item !== undefined && item.length > Define.COUNT_0)
			$(id).attr(Define.SRC, url + item.substr(Define.INDEX_1, item.length - Define.COUNT_1));
		else{
			$(id).attr(Define.SRC, Define.STR_BLANK);
			$(id + '_parent').hide();
		}	
	}
		
//	this.removeSymbol = function(str){
//        var reg=/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
//        var ret = str.replace(reg,'');
//        return ret;
//    }
    
    
    this.remove = function(arr){
    
    	var result = [];
    	
    	for(var i = 0; i < arr.length; ++i){
    	
    		if(arr[i] !== '')
    			result.push(arr[i]);	
    	}
    	
    	return result;
    }
	    
	this.enter = function(event){
	 if(event !== undefined && event.keyCode ===  KeyCode.ENTER){
		return true;
	 }
	
	  return false;
	}

}

var _Util = new Util(); 


function XPath(tContext){

	this._context = tContext.substring(0, tContext.length - 1);
		
	this.context = function(){	
		return this._context;
	}
}

var XLogin = 
{	
	logout : function(){
		_Modal.showModal('#id-modal-confirm');
 		$('#id-modal-confirm #id_btn_confirm').attr(Define.ON_CLICK, 'XLogin.logoutOk();');
	} ,	

	logoutOk : function() {
		location.href= _XPath.context() + '/mgrLogout.do';
	}
}

