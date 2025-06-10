
function Suggest(){

	this.SUGGEST_SELECT = 'suggest-select';
	this._Path = Define.STR_BLANK;
	this.j_suggest_wrds = null;
	this.finding_url = Define.STR_BLANK;
	this.j_parent = null;
	
	this.emptyChildWrd = function(){
		$('#id_suggest_input').val(Define.STR_BLANK);
		this.j_suggest_wrds.empty();
	}
	
	this.init = function(path, j_parent, url){
		this._Path = path;
		this.finding_url = url;
		this.j_parent = j_parent; 		
		
		this.j_parent.append(
		`
			<span id="id_suggest_wrds"> </span> <input type="text" id="id_suggest_input" size="1" autocomplete="off"/>			
			<div id="id_suggest_found" class="suggest-found" style="left: 15px; top: 671.969px; display: none; position: absolute; z-index: 1000;">
				<div id="id_suggest_found_list" class="suggest-found-list" style="height: 180px; overflow-y: auto;"></div>
			</div>
		`
		);
		
		this.j_suggest_wrds = $('#id_suggest_wrds');
		
		//$('#id_suggest_wrds').sortable();
		this.j_suggest_wrds.sortable();
		this.j_suggest_wrds.disableSelection();
		
		this.setEvent();
		
		//$('#id_suggest_area').on(Define.CLICK, function(){
		this.j_parent.on(Define.CLICK, function(){
			$('#id_suggest_input').focus();
		});
	}

	this.display = function(){
		//var offsetSign = $('#id_suggest_area').offset();
		var offsetSign = this.j_parent.offset();
		
		var offsetInput = $('#id_suggest_input').offset();
		
		//console.log('id_suggest_area');
		//console.log(offsetSign);
		
		//console.log('id_suggest_input');
		//console.log(offsetInput);
				
//		$('#id_suggest_found').css('left', offsetSign.left + 10);
//		$('#id_suggest_found').css('top', offsetInput.top + 30);
				
		$('#id_suggest_found').css(Define.DISPLAY, 'block');
		
		var a1 = $('#id_suggest_found').offset();
		
		console.log('a1');
		console.log(a1);
		
		$('#id_suggest_found').offset({top:offsetInput.top + 30, left:offsetSign.left - 30});
	}
	
	this.delete = function(){
	
		var a = $('#id_suggest_input').val();
		
		if($('#id_suggest_input').val().length > 0)
			return;
			
		if($('span.suggest-tag').last().length > 0){
			$('span.suggest-tag').last().remove();
		}
	}
	
	this.setEvent = function(){
		
		var self = this;
		
		$('#id_suggest_input').on('keydown', function(event){
		
			var x = event || window.event;
			var key = (x.keyCode || x.which);
			switch(key){
			case KeyCode.BACKSPACE:
			
				console.log("backspace : ");
				console.log(event);
				self.delete();
				break;
			}
		});
		
		$('#id_suggest_input').on('keyup', function(event){
			
			var x = event || window.event;
			var key = (x.keyCode || x.which);
			
			switch(key){
			case KeyCode.TOP:
			case KeyCode.BOTTOM:
				self.setKey(key);
				self.scroll();
				break;
			case KeyCode.ESC:
				$('#id_suggest_found').css(Define.DISPLAY, Define.NONE);
				break;
			case KeyCode.ENTER:				
				self.enter();
				break;
			}
		});
		
	}
	
	this.enter = function(){	   
	   if($('#id_suggest_found:visible').length === 0)  {
		   	var val = $('#id_suggest_input').val();
			//console.log("text = " + val);				
			this.showFound(val, this.finding_url);	
	   }
	   else{
	   		this.selection();
	   }
	}
	
	this.selection= function(){
	
		if($('#id_suggest_found:visible').length === 0)
			return;
					
		if(this.selected().wrd === undefined)
			return;
			
		this.addWrd(this.selected().wrd, this.selected().maCodeNo);
		$('#id_suggest_input').val(Define.STR_BLANK);
		$('#id_suggest_found').css(Define.DISPLAY, Define.NONE);
		
	}
		
	this.showFound = function(val, finding_url){
				
		if(val.length === 0){
			return;
		}
		
		// var url = this._Path + '/selectPlManage.api';
		var url = this._Path + finding_url;
		
		var param = {
			wrd:val
		}
		
		var self = this;
		
		$.post(url, param, function(data, status){
			//console.log(JSON.stringify(data.resultList));
			
			if(data.resultList.length === 1){
			
				var value = Define.STR_BLANK;
				if(data.resultList[0].maCodeNo !== undefined){
					value = data.resultList[0].maCodeNo;
				}
				self.addWrd(data.resultList[0].wrd, value);
				$('#id_suggest_input').val(Define.STR_BLANK);
				return;
			}
			
			var html = Define.STR_BLANK;
			
			for(var index = 0; index < data.resultList.length; ++index){
				
				var item = data.resultList[index];
				var desc = Define.STR_BLANK;
				
				if(item.dfnDc !== undefined){
					desc = item.dfnDc; 
				}

				html += `
				<div class="suggest-found-wrd" tabindex="0">
					<ul>
			         <li class="suggest-word-li" data-sign="${item.maCodeNo}">${item.wrd}</li>
			         <li class="suggest-expl-li">${desc}</li>
			       </ul>
			    </div>
			    `;
			}
			
			$('.suggest-found-list').html(html);
			
			$('.suggest-found-wrd').on(Define.CLICK, function(){
				
				$('#id_suggest_found').css(Define.DISPLAY, Define.NONE);				
				var wrd = $(this).find('.suggest-word-li').text();
				var code = $(this).find('.suggest-word-li').attr('data-sign');
				
				self.addWrd(wrd, code);
				
				$('#id_suggest_input').val(Define.STR_BLANK);
				
			});
			
			self.display();
		});
		
	}
	
	this.addWrd = function(wrd, code, suggest){
		var html = '';
		
		if(suggest === true){
		
			if(wrd === 'O'){
				html = `			
					<span class="ui-sortable-handle label suggest-tag suggest-gray" data-sign="${code}">${wrd}
					  <span data-role="remove"></span>
					</span>
				`;
			}
			else{
				html = `			
					<span class="ui-sortable-handle label suggest-tag suggest-blue" data-sign="${code}">${wrd}
					  <span data-role="remove"></span>
					</span>
				`;					
			}		
		}
		else{
			html = `			
				<span class="ui-sortable-handle label suggest-tag suggest-blue" data-sign="${code}">${wrd}
				  <span data-role="remove"></span>
				</span>
			`;
		}
		
		this.j_suggest_wrds.append(html);
		this.j_suggest_wrds.find('[data-role="remove"]').on(Define.CLICK, function(){
			$(this).parent().remove();
		});
	}
	
	this.removeAll = function(){
		var listSpan = this.j_suggest_wrds.children(Define.SPAN);
		
		listSpan.each(function(index, item){
		  item.remove();
		});
	}
	
	this.getText = function(){
	
		var list = this.j_suggest_wrds.children(Define.SPAN);
		var result = Define.STR_BLANK;
		
		list.each(function(index, item){
		
			if(result === Define.STR_BLANK){
				result += $(item).text().trim();
			}
			else{
				result = result + Define.SPACE + $(item).text().trim();
			}
			
		});
		
		return result;
	}
	
	this.getSignWrds = function(){
	
		var listSpan = this.j_suggest_wrds.children(Define.SPAN);
		
		var result={wrds:Define.STR_BLANK, codes:Define.STR_BLANK};
		
		listSpan.each(function(index, item){   
		   
		   if(result.wrds.length > 0){
		   		result.wrds = result.wrds + ',' + $(this).text().trim();
		   		result.codes = result.codes + ',' + $(this).attr('data-sign');
		   }
		   else{
		   		result.wrds = $(this).text().trim();
		   		result.codes = $(this).attr('data-sign');
		   }
		});
	
		return result;
	}
	
	this.first = function(){
		return $('.suggest-found-wrd').first();
	}
	
	this.selected = function(){

		var currentSelect = $('.suggest-found-wrd.' + this.SUGGEST_SELECT);
		
		if(currentSelect.length === 0)
			return Define.STR_BLANK;
		
		var text = currentSelect.find('.suggest-word-li').text();
		var code = currentSelect.find('.suggest-word-li').attr('data-sign');
		
		var data = {wrd:text, maCodeNo:code};
		
		return data;
	}
	
	this.scroll = function(){
		
		var select = $('.suggest-found-wrd.' + this.SUGGEST_SELECT);
		var list = $('.suggest-found-wrd');
		
		var h3 = 0;
		var h1 = 0;		
		
		list.each(function(index, item){
			
			var sel = $(this).index();
			var sel2 = select.index();
			
			if( sel == sel2)
				return false;
			
			h1 += $(this).outerHeight();						
		});
		
		h3 = h1;
				
		console.log('height = ' + h3);
		$('#id_suggest_found_list').animate({scrollTop:h3}, 200);

	}
	
	this.setKey=function(key){
		
		var currentSelect = $('.suggest-found-wrd.' + this.SUGGEST_SELECT);
		
		if(currentSelect.length === 0){
			this.first().addClass(this.SUGGEST_SELECT);
		}
		else{
			if(key === KeyCode.BOTTOM){				
				if(currentSelect.next().length === 0){
					//first().addClass(this.SUGGEST_SELECT);
				}
				else{
					currentSelect.removeClass(this.SUGGEST_SELECT);
					currentSelect.next().addClass(this.SUGGEST_SELECT);	
				}
			}
			else if(key === KeyCode.TOP){
				
				if(currentSelect.prev().length ===0){
					
				}
				else{
					currentSelect.removeClass(this.SUGGEST_SELECT);
					currentSelect.prev().addClass(this.SUGGEST_SELECT);	
				}
			}
		}
	}
	
	this.setData = function(sumry, sumryArray, sep, suggest){
	
		var self = this;
		
		if(sumry.length === 0)
			return;
		
//		var a_sumry = sumry.split(',');
//		var a_sumryArray = sumryArray.split(',');

		var a_sumry = sumry.split(sep);
		var a_sumryArray = sumryArray.split(sep);
				
		a_sumry.forEach(function(item, index){
			if(a_sumry.length === a_sumryArray.length){
				//console.log('item = ' + item + ', ' + a_sumryArray[index]);		
				
				self.addWrd(item, a_sumryArray[index], suggest);
			}
		});		
	
	}
}

const _Suggest = new Suggest();
