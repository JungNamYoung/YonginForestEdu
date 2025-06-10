
function WrapModal(id_modal, id_form) {
		
	const tModal = new Modal(id_modal);
		
	this.show = function(){		
		tModal.showModal();
	}
	
	this.hide = function(){
		tModal.hideModal();	
	}
	
	this.jquery = function(id){
		return $(tModal.id() + ' ' + id);
	}
	
	this.getParam = function(){		
		return _Util.getParam(id_form);
	}
	
	this.reset = function(){		
		_Util.resetChild(id_modal);	
	}
}

