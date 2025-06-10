
function _Valid(){	
		
	this.items = [];
	
	this.add = function(tId, tNum, tNm, tType){
	
		var item = {id:tId, num:tNum, nm:tNm, type:tType};
		
		this.items.push(item);
	}
	
	this.check = function(){
	
		var result = {ret:true, msg:'성공'};
		
		for(var idx = 0; idx<this.items.length; ++idx){
		
			if($(this.items[idx].id).val().length < this.items[idx].num && this.items[idx].type === Define.INPUT){
				result.ret = false;
				result.msg = this.items[idx].nm + '는 최소 ' + this.items[idx].num + '자리는 입력 해주세요';
				return result;
			}
			 		
		}
		
		return result;
	}
	
	this.clear = function(){
		for(var idx=0; idx<this.items.length; ++idx){
			
			if(this.items[idx].type === Define.INPUT){
				$(this.items[idx].id).val(Define.STR_BLANK);
			}
			else if(this.items[idx].type === Define.LABEL){
				$(this.items[idx].id).text(Define.STR_BLANK);
			}
		}
	}
}


var Valid = new _Valid();