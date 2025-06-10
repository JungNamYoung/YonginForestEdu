

function SelectDelete() {

	var _self = this;
	var INPUT_CHECK = 'input.form-check-input';
	
	this._Delete = null;
	this._checks = null;
	this._url_update = '';
	this._url_reload = '';
	
	this.init = function(t_url_update, t_url_reload) {
		this._url_update = t_url_update;
		this._url_reload = t_url_reload;
		this._Delete = new WrapModal('id_modal_select_delete');
		this._checks = $(INPUT_CHECK);
	}

	this.view = function() {
		this._Delete.show();
		this._Delete.jquery('#id_modal_del_confirm').click(this.DeleteOk);
	}

	this.DeleteOk = function() {
		_self._Delete.hide();
		
		var checks = $(INPUT_CHECK + ':checked');
		
		checks.each(function(index, item) {
//			var is = $(item).is(Define.COLON_CHECKED);
//			if (is === false)
//				return true;

			var param = { seq: $(item).attr(Define.DATA_SEQ), delYn: Define.YES };
			
			console.log('DeleteOk : '  + JSON.stringify(param));
			
			$.post(_self._url_update, param, function(data, status) {
//				console.log(data.ret);
				if(checks.length - Define.INDEX_1 === index){
					location.href = _self._url_reload;	
				}				
			});
		});

//		location.href = _self._url_reload;
	}

	this.setClick = function(id) {
		$(id).children().remove();
		$(id).append(Icon.CHECK);
		$(id).click(function() {
			_self._checks.each(function(index, item) {
				if ($(item).is(Define.COLON_CHECKED) === true) {
					$(item).prop(Define.CHECKED, false);
				}
				else {
					$(item).prop(Define.CHECKED, true);
				}
			});
		});
	}
}