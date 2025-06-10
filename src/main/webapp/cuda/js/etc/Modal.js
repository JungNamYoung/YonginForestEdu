

function Modal(_id_dialog, _not_use_esc) {

	var _hideItems = [];
	var _inputs = [];
		
	if(_id_dialog !== undefined)
		_id_dialog = checkID(_id_dialog);
	
	function checkID(id){
		
		const ch = id.substr(Define.INDEX_0, Define.COUNT_1);
		
		if(ch !== '#'){
			id = Define.SHARP + id;
		}
		
		return id;
	}
	
	this.id = function(){
		return _id_dialog;
	}
			
	this.addHide = function(item){	
		_hideItems.push(item);
	}
	
	this.addText=function(item){
		_inputs.push(item);
	}
	
	this.hideItems=function(){
		for(var i = 0; i < _hideItems.length; ++i){
			var id = Define.SHARP + _hideItems[i];			
			$(id).hide();
		}
	}
	
	this.showItems=function(){
		for(var i = 0; i < _hideItems.length; ++i){
			var id = Define.SHARP + _hideItems[i];			
			$(id).show();
		}
	}
	
	this.resetText=function(){
		for(var i = 0; i < _inputs.length; ++i){
			var id = Define.SHARP + _inputs[i];			
			$(id).val('');
		}
	
	}
	
	this.submit = function(tName, url) {
		var theForm = document.forms[tName];
		theForm.setAttribute(Define.ACTION, url);
		theForm.setAttribute(Define.METHOD, Define.POST);
		theForm.submit();
	}

	this.showModal = function(text) {				
								
		var jText = $('#id_text');		
		if(jText.length > Define.COUNT_0 && text !== undefined){
			jText.text(text);
		}			
		
		this.check();
				
		
		if($(_id_dialog).length === 0){
			alert(_id_dialog + Define.NOT_EXIST);
		}
	
		if (_not_use_esc === true || _not_use_esc === undefined) {
			$(_id_dialog).modal({ keyboard: false, backdrop: 'static' });
		}

		$(_id_dialog).modal(Define.SHOW);
		//$(_id_dialog).draggable({ handle: '.modal-header' });
	}
	
	this.val = function(id, value){
	
		this.check();
		
		id = this.checkID(id);
		
		if(value === undefined){			
			return $(_id_dialog + Define.SPACE + id).val();
		}
		else
			$(_id_dialog + Define.SPACE + id).val(value);
	}
	
	this.check = function(){
		if(_id_dialog === undefined){
			console.assert(false, Define.UNDEFINED);
		}
	}
	
	this.text = function(id, value){
	
		this.check();	
		
		id = this.checkID(id);
		
		var j_text = $(_id_dialog + Define.SPACE + id);
		var len = j_text.length;
		
		$(_id_dialog + Define.SPACE + id).text(value);
	}
		
	this.select = function(id, value){	
		id = this.checkID(id);
		
		$(_id_dialog + Define.SPACE + id).val(value).prop(Define.SELECTED, true);
	}

	this.hideModal = function() {
		//id = this.checkID(id);
	
		$(_id_dialog).modal(Define.HIDE);
	}

	this.attr = function(id, tAttr, value){	
		this.check();
				
		id = this.checkID(id);
		
		$(_id_dialog + Define.SPACE + id).attr(tAttr, value);
	}
	
	this.checkID = function(id){
		const ch = id.substr(Define.INDEX_0, Define.COUNT_1);
		if(ch !== '#'){
			id = Define.SHARP + id;
		}
		return id;
	}
	
	this.hideItem = function(id){
		this.check();
		id = this.checkID(id);
		$(_id_dialog + Define.SPACE + id).hide();
	}
	
	this.showItem = function(id){
		this.check();
		id = this.checkID(id);
		$(_id_dialog + Define.SPACE + id).show();
	}
	
	this.setClick = function(event){
	
		var id = '#id_btn_confirm';
		//$(_id_dialog + Define.SPACE + id).attr(Define.ON_CLICK, 'fn_modify_act(true)');
		$(_id_dialog + Define.SPACE + id).attr(Define.ON_CLICK, event);
	}
}

//const _Modal = new Modal();