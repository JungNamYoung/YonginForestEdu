

function Drag(jQueryInput) {

	this.add = function(wrd, code){
	
		var html = `			
			<span class="ui-sortable-handle label suggest-tag suggest-blue" data-sign="${code}">
			   ${wrd}
			</span>
		`;
		
		jQueryInput.append(html);
	}
	
	this.remove = function(){
		var list = jQueryInput.children(Define.SPAN);
		
		list.each(function(index, item){
			item.remove();
		});
	}
}
