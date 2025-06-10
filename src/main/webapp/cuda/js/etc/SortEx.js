
function SortEx(){	
	
	this.I_DESC=`<i class="bi bi-caret-down-fill"></i>`;
	this.I_ASC=`<i class="bi bi-caret-up-fill"></i>`;
	this.I_LIST=`<i class="bi bi-list"></i>`;
	this.I_LIST_PART='bi-list';	
	this.I_ASC_PART='bi-caret-up';
	this.I_DESC_PART='bi-caret-down';
	
	this.items = [];
	this.cols = [];	
	
	this.setIcon = function(result){	
		for(var idx in this.cols){			
			var col = this.cols[idx];
			var id = this.items[idx];
						
			if(result.type === col){
				
				var icon = this.I_ASC;
				
				if(result.order === Define.DESC){
					icon = this.I_DESC;
				}
				
				$(id).children().remove();
				$(id).append(icon);	
			}
		}	
		
	}
	
//	this.click = function(self){
//		
//		self = this;
//		
//		this._iconList(self);	
//		
//		var child = $(self).children();
//		
////		if(child.length === 0){
//////			var b1 = '';			
////			$(self).append(this.I_ASC);
////		} 
////		else
////		{
//			var tClass = child.attr(Define.CLASS);
//			
//			$(self).children().remove();
//			
//			if(tClass.indexOf(this.I_LIST_PART) >= Define.INDEX_0 ){
//				$(self).append(this.I_ASC);
//			}
//			else if(tClass.indexOf(this.I_ASC_PART) >= Define.INDEX_0 ){
//				$(self).append(this.I_DESC);
//			}
//			else if(tClass.indexOf(this.I_DESC_PART) >= Define.INDEX_0){
//				$(self).append(this.I_LIST);
//			}
////			else{
////				var c1 = '';
////			}
////		}
//	},
		
	this.push = function(item, col_name){
		
		var tSortEx = this;
		
		this.items.push(item);
		this.cols.push(col_name);
		
		$(item).append(this.I_LIST);
		
		$(item).click(function(){			
		
			self = this;
		
			tSortEx._iconList(self);	
		
			var child = $(self).children();
		
			var tClass = child.attr(Define.CLASS);
			
			$(self).children().remove();
			
			if(tClass.indexOf(tSortEx.I_LIST_PART) >= Define.INDEX_0 ){
				$(self).append(tSortEx.I_ASC);
			}
			else if(tClass.indexOf(tSortEx.I_ASC_PART) >= Define.INDEX_0 ){
				$(self).append(tSortEx.I_DESC);
			}
			else if(tClass.indexOf(tSortEx.I_DESC_PART) >= Define.INDEX_0){
				$(self).append(tSortEx.I_LIST);
			}
	
		});
	},
	
	this._iconList = function(self){
		
		for(var idx in this.items){
			var item = this.items[idx];
			var id = $(self).attr(Define.ID);
			
			if( item.indexOf(id) < Define.INDEX_0 ){				
				var child = $(item).children();				
				//if(child.length > Define.COUNT_0)
//				{
				$(item).children().remove();
				$(item).append(this.I_LIST);
//				}				
			}
		}	
	},
	
	this.value = function(){
		
		var result={type: Define.STR_BLANK, order: Define.STR_BLANK};
		
		for(var idx in this.items){
			
			var item = this.items[idx];			
			var child = $(item).children();
			
			var tClass = $(child).attr(Define.CLASS);
			
			if(tClass.indexOf(this.I_LIST_PART) < Define.COUNT_0){
				
				result.type = this.cols[idx];
				
				if($(child).attr(Define.CLASS).indexOf(this.I_ASC_PART) >= Define.INDEX_0){					
					result.order = Define.ASC;	
				}
				else{
					result.order = Define.DESC;
				}
				
				return result;								
			}
		}
		
		return result;
	}
	
}

const _SortEx = new SortEx();

