
function Upload(_url, _post){

	this.sendFile = function(onSend) {
	
		if (confirm('전송하시겠습니까?') == false)
			return;

		var form = $('#id_form_upload')[0];

		var formData = new FormData(form);
		
		var post = '';
		if(_post != undefined)
			post =_post;
			 
		$.ajax({
			//url : _url + '/upload' + post + Define.EXT_API,
			url : _url + 'cuda-upload/upload' + post + Define.EXT_API,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false
		}

		).done(function(data) {		
	
			console.log('Upload.sendFile().done() : ' + Define.ENTER + JSON.stringify(data));
		
			if(onSend !== undefined){
				onSend(data);
				return;
			}			
			
// 			$('div.alert').text(data.results.join('<br>'));
			
			var text = '';
			
			data.resultList.forEach(function(item, index){
				text = text  + index + ' : ' + item + '<br>';	
			});
			
			$('#info').html(text);
		});
	}
}
