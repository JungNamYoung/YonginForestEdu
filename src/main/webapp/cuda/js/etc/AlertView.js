
function AlertView(_plSumryEx, _fireType, _area, _instt, _dong, _numbers){

	const _code_fire = "F";
	const _code_happen_situ = "S";
	const _code_req_item = "R";
	const _code_safe = "O";
	const _code_area = "A";
	const _code_storm = "T";	
	const _NOT_FOUND = -1;	
	const _self = this;
	
	this._url = '';
	this.txtSignCode = '';
	this._option_selected = ' option:selected';
	
	this.showEx = function(tWindow, tView, selected){
			var value = tView.get(selected);
			
			_self.hide(tWindow);
			_self.show(value);
	}
	
	this.init = function(tWindow, tView, tContextPath){
		
		this.makeArea();
		this.makeDisasterItem();
		this.makeInstt();
		
		this.makeSelectBox(_plSumryEx, $('#id_disaster_item').val());
		
		$('#id_disaster_item').change(function(){
			console.log(this.value);
			console.log(tView);
			
			_self.makeSelectBox(_plSumryEx, this.value);
			
			_self.showEx(tWindow, tView, this.value);			
			
			$('#id_cvt_sign_msg').val(Define.STR_BLANK);
			$('#id_cvt_smry_msg').val(Define.STR_BLANK);
		});	
		
		this.initAddress_ex(tContextPath);
	}
	
	
	this.initAddress_ex = function (tContextPath){		
		
		this._url = tContextPath + "selectZipCodeList.api";		
		
		var tUrl = this._url; 
		var tSelf = this;
		
		$('#id_address_detail').autocomplete({
			source : function(request, response){
				
				//const regex = new RegExp(/[가-힣\d]{2,}(로|길).[\d]+/g);				
				const regex = new RegExp(/[가-힣0-9]{2,}/g);
				
				var tWord = request.term.trim();
				
			   	var test = regex.test(tWord);
			   	
			   	if(test === false){
			   		console.log(" false " + tWord);
			   		return;			
			   	}   	
			   
			    console.log(" true " + tWord);
						   
			   $.ajax({
			     url: tUrl,
			     type:'POST',
			     dataType:'json',
			     data:{term:tWord, type:'qRoad'},
			     success:function(data){
			       response(          
			         $.map(data.autoComplete, function(item){			         
			         	//console.log("courtDong : " + item.courtDong);
			         	return {
			         	   //label:item.post,
			         	   post:item.post,
			         	   label:item.road,
						   pre:item.pre,
						   signCode:item.signCode,
						   fingerPrint:item.fingerPrint,
						   cityNameCode:item.cityNameCode,
						   townshipCode:item.townshipCode,
						   //road:item.road,
			         	}  
			         })
			       )
			     }
			  })			   
			},
			delay:500,
			minLength:2,
			select : function(event, ui){
				tSelf._select(ui);
			},
			
			focus:function(event, ui){
				return false;
			}
		});
	}
	
	this._select = function(ui){
		console.log("select address : ");
		console.log(ui.item);
		
		$("#id_address").val(ui.item.pre);
		$("#id_address").attr('data-sign', ui.item.cityNameCode + "," + ui.item.townshipCode);
		
		if(ui.item.fingerPrint !== undefined && ui.item.fingerPrint.length > 0)
			$("#id_address_detail").attr('data-sign', ui.item.fingerPrint + "," + ui.item.signCode);
		else
			$("#id_address_detail").attr('data-sign', ui.item.signCode);
	}
		
	this.hide = function(tView) {
		tView.forEach(function(item){
			$(item).parent().parent().hide();
						
			// console.log("hide : " + item);
			// $(item).parent().parent().addClass("invisible");
		});
	}
	
	this.show = function(tView) {
		tView.forEach(function(item){
			$(item).parent().parent().show();
			
			// console.log("show : " + item);			
			// $(item).parent().parent().removeClass("invisible");
		});		
	}
	
	this.makeSelectBox = function(array, sel){
		
		console.log("sel = " + sel);
		
		var option_area = "";
		var option_happen_area = "";
		var option_happen_area_ext = "";
		var option_fire_type = "";
		var option_happen_situ = "";
		var option_req_item = "";
		var option_safe = "";
		var option_storm = "";		
		
		const DMCM = "DMCM";
		
		array.forEach(function(item){
		
			if(sel === "DME" || sel === "DMT"){				
//				console.log("-> " + item.useCode + " , " + DME + _step_A_A);
				if(item.useCode.indexOf(DMCM) > _NOT_FOUND){
					option_happen_area += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
				}
			}	
				
			if(item.useCode.indexOf(sel) > _NOT_FOUND){			
				if(sel === "DMD"){
					if(item.useCode.indexOf(sel + _code_area) > _NOT_FOUND){
						option_area += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
					}
				}		
							
				if(item.useCode.indexOf(sel + _code_fire) > _NOT_FOUND){
					option_fire_type += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
				}
				
				if(item.useCode.indexOf(sel + _code_happen_situ) > _NOT_FOUND){
					option_happen_situ += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
				}
				
				if(item.useCode.indexOf(sel + _code_req_item) > _NOT_FOUND){
					option_req_item += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
				}
				
				if(item.useCode.indexOf(sel + _code_safe) > _NOT_FOUND){
					option_safe += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
				}
				
				if(item.useCode.indexOf(sel + _code_storm) > _NOT_FOUND){
					option_storm += `<option value=${item.useCode} data-sign=${item.sumryArray}>${item.orginl}</option>`;
				}
				
			}
		});
		
		var html = "";
		html += this.makeOption(option_area, "지역", "id_disaster_area", "col-3", true, "", "");
		html += this.makeOption(option_happen_area, "발생지역", "id_happen_area", "col-2", true, "", "지역");
		html += this.makeOption(option_happen_area, "발생지역", "id_happen_area_ext", "col-2", true, "earth_quake", "");
		html += this.makeOption(option_storm, "태풍종류", "id_storm_type", "col-3", true, "", "");
		html += this.makeOption(option_fire_type, "화재종류", "id_fire_type", "col-3", true, "", "");
		html += this.makeOption(option_safe, "안전종류", "id_safe_type", "col-2", false, "", "");
		html += this.makeOption(option_happen_situ, "발생상황", "id_happen_situ", "col-4", true, "", "");
		html += this.makeOption(option_req_item, "요청사항", "id_req_item", "col-5", true, "", "");
		
		$('#div_contents').html(html);
	}
	
	// 필수 입력 - 빨간 *
	this.makeRedPoint = function(redPoint){
	
		var text = "";
		if(redPoint === true){
			text = `<i class="bi bi-asterisk" style="font-size:0.5rem;color:red;"></i>`
		}
		return text;
	}
	
	this.makeOption = function(data, label, valueId, col_size, redPoint, addInfo, tail){
	
		var addInfo_text = '';
		var tail_text = '';
		
		if(addInfo === "earth_quake"){
		   addInfo_text = `
		            <div class="col-2 pt-1">
			   			<div class="form-check form-check-inline">
			               <input type="radio" name="radio_happen_area" value="area" class="form-check-input" checked data-sign="PLCC00899"/>
			               <label class="form-check-label">지역</label>               
			             </div>
			             <div class="form-check form-check-inline">
			             	<input type="radio" name="radio_happen_area" value="sea" class="form-check-input" data-sign="PLCC00899"/>
			               	<label class="form-check-label">해역</label>		               
			             </div>
		             </div>
	                 <div class="col-2">
		                 <div class="input-group input-group-sm">	             
		                    <span class="input-group-text" id="id_quake_size">규모</span>
				            <input type="text" id="id_quake_size_value" class="form-control" value="1.0"/>
				            <span class="input-group-text" id="id_quake_happen" data-sign="PLNA00130,PLET02669">지진발생</span>
						 </div>
					 </div>		             
		         `;
		}		
		
		if(tail !== ""){
			tail_text = `<label id="id_happen_area_text" class="col-1 pt-1 pb-1 fs-6 fw-bold" data-sign="PLCC00899">${tail}</label>`;
		}
		
		var html = `
			<div class="row mb-3 text-center">
				<label class="col-1 pt-1 pb-1 fs-6 fw-bold"> `
				+  	
				this.makeRedPoint(redPoint) 
				+			 
			`${label}</label>
				<div class=${col_size}>
					<select id=${valueId} class="form-select form-select-sm">
						${data}
					</select>	
				</div>
				`
				+
				tail_text
				+ 
				addInfo_text		
				+
				`								
			</div>
		`;
		return html;
	}
	
	// 발생장소 - 상세주소
	this.makeArea = function(){	
		var area = '<option></option>';
		_area.forEach(function(item){
			area += `<option value=${item.subCode} data-sign=${item.signCode}>${item.nm}</option>`;
		});
		
		var html = `
				<div class="row mb-3 text-center">
					<label class="col-1 pt-1 pb-1 fs-6 fw-bold"><i class="bi bi-asterisk" style="font-size:0.5rem;color:red;"></i>발생장소</label>
					
					<div class="col-2">
						<input type="type" id="id_address" class="form-control form-control-sm" placeholder="도로/길 입력시 시/구는 자동 입력됨" data-sign="" disabled/>
					</div>
					<div class="col-3">
						<div class="input-group">
					    <input type="text" id="id_address_detail" class="form-control form-control-sm" placeholder="도로/길 입력하세요"/>						
					    	<input type="text" id="id_dong_ex" class="form-control form-control-sm" placeholder="동 표시" disabled/>
					    </div>						
					</div>
				</div>
		`;
				
		$('#div_area').html(html);
	}
	
	// 발생항목
	this.makeDisasterItem = function(){
	
		var option = '';
		
		_fireType.forEach(function(item){
			option += `<option value=${item.subCode} data-sign=${item.signCode}>${item.nm}</option>`;
		});
	
		var fire = `
			<div class="row mb-3 text-center">
				<label class="col-1 pt-1 pb-1 fs-6 fw-bold"><i class="bi bi-asterisk" style="font-size:0.5rem;color:red;"></i>발생항목</label>
				<div class="col-2">
					<select id="id_disaster_item" class="form-select form-select-sm">
					${option}
					</select>
				</div>
				
				<div class="col-2">
					<div class="input-group">
					    <input type="text" id="id_dsr_seq" class="form-control form-control-sm" disabled placeholder="재난 시퀀스"/>
					    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="searchDisaster();">재난정보 검색</button>					    
					</div>
				</div>
		
			</div>
		`;
		
		$('#div_fire_type').html(fire);
	}

	this.makeInstt = function(){
	
		var data = '';
	
		_instt.forEach(function(item){		
			data += `<option value="${item.nm}" data-sign=${item.signCode}>${item.nm}</option>`;
		});
	
		var html = `
			<div class="row mb-3 text-center">
				<label class="col-1 pt-1 pb-1 fs-6 fw-bold"><i class="bi bi-asterisk" style="font-size:0.5rem;color:red;"></i>발송기관</label>
				<div class="col-2">
					<select id="id_instt" class="form-select form-select-sm">
						${data}
					</select>
				</div>
			</div>
		`;
	
		$('#div_instt').html(html);		
	
	}
	
 	this.time = function(hours){
		var data = '<option></option>';
		//var data = '';
				
		hours.forEach(function(item){			
			data += `<option value=${item.nm} data-sign=${item.signCode}>${item.nm}</option>`;
		});	
	
	// <select id="id_time" class="form-select form-select-sm">
		var html = `			
			<select id="id_time" class="form-select form-select-sm">
				${data}
			</select>
		`;
		
		var group = `
		   <div class="input-group input-group-sm">
		     ${html}
		     <span class="input-group-text">경</span>
		   </div>
		`;
	
		$('#div_time').html(group);	
	}
	
	this.makeMessage = function(items, debugging){
	 	
	 	var tResults = [];	 	
	 	
	 	items.forEach(function(item){
	 	
	 		if($(item.id).is(':visible') === false){
	 			return false;
	 		}
	 		
	 		var result = {id:'', text:'', signCode:'', pre:'', post:'', end:''};		 		
	 		
	 		result.xsearchId = $(item.id).attr(Define.ID);
	 			 		
	 		if(item.type == Define.SEL)	{
	 			result.text =  $(item.id + _self._option_selected).text();				 			
	 			result.signCode = $(item.id + _self._option_selected).data('sign');
	 		}
	 		else if(item.type == 'input'){
	 			result.text = $(item.id).val();
	 			
	 			//result.signCode = $(item.id).data('sign');
	 			
	 			if(item.id === '#id_date_picker'){
	 				//result.signCode = $(item.id + '_sign').data('sign');
	 				result.signCode = _DatePicker.Suggest;
	 			}
	 			else
	 				result.signCode = $(item.id).data('sign');
	 			
	 			//result.signCode = $(item.id).attr('data-sign');
	 		}		
	 		else if(item.type == 'radio'){
	 			result.text = $(item.id).next().text();
	 			result.signCode = $(item.id).data('sign');
	 		}
	 		else if(item.type == 'text'){
	 			result.text = $(item.id).text();	 			
	 			result.signCode = $(item.id).data('sign');
	 		}
	 			
	 		if(result.text.length > 0)	{
	 			if(item.pre !== undefined){
	 				result.pre = item.pre;
	 			}
	 			
	 			result.text = result.text;
	 			
		 		if(item.post !== undefined){
		 		   	result.post = item.post;		 		   	
		 		   	
		 		   	if(item.post_sign !== undefined){
		 		   	   result.signCode += ("," + item.post_sign); 
		 		   	}
		 		}
		 		
		 		if(item.end !== undefined){
		 			result.end = item.end;
		 		} 		
	 		}
	 		
	 		tResults.push(result);
	 			
	 	});
	 	
	 	var data = '';	 	
	 	var txtSign = '';
	 	
	 	tResults.forEach(function(item, index){
	 		 	if(item.pre !== undefined){
	 				data += item.pre;	 			
	 			}
	 			
	 			data += item.text;	 			
	 			
	 			if(txtSign === ''){	 			
	 				if(item.signCode !== undefined)
	 					txtSign = item.signCode;
	 			}
	 			else{
	 				if(item.signCode !== undefined)
	 					txtSign += ',' + item.signCode;
	 			}
	 			
	 			if(debugging === true)
	 				console.log(index + ", result: " + JSON.stringify(item));
	 			
		 		if(item.post !== undefined){
		 		   	data += item.post;		 		
		 		}
		 		
		 		if(item.end !== undefined){
		 			data += item.end;		 		
		 		}
	 	
	 	});	 	
	 	
	 	_self.txtSignCode = txtSign;
	 	
	 	return data.trim();
	}

	this.earthQuake = function(scale){	
		var words = scale.split('.');	
		var signCode = _self.findSignCode(words[0]) + ',PLSM00092,' + _self.findSignCode(words[1]);	
		return signCode;		
	}
	
	this.findSignCode = function(txt){
		for(var index =0; index < _numbers.length; ++index){
			if(_numbers[index].nm === txt){
				return _numbers[index].signCode;		
			}
		}	
	}
}

