<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>	
	
const Form = {	
	
	mkFormSubmit:function(idWrapForm, tAction, inputInfo){
// 		const form = $('<form>',{id:'id-form', action:'/test/view.do', method:'post'});
// 		const input = $('<input>', {id:'id-email', name:'email'});
		const submit= $('<button>', {id:'id-cuda-submit', type:'submit', text:'전송'});

		const form=$('<form>', {id:'id-cuda-form', method:'post', action:tAction, style:'display:none;'});
		
		for(let idx = 0; idx < inputInfo.length;  ++idx){
			
			const input = $('<input>', {id:'id-' + inputInfo[idx].name, name:inputInfo[idx].name, value:inputInfo[idx].value});
			
			form.append(input);
		}
		
		form.append(submit);
		
		//$('#id-wrap-form').append(form);
		$(idWrapForm).append(form);
		
		$('#id-cuda-submit').click();
	}
}

</script>