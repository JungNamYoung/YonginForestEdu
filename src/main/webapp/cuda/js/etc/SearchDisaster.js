

function SearchDisaster() {

	this._checks = null;

	this.init = function(id_modal, id_radio){		
		self = this;		
		this._checks = $(id_modal+' .form-check-input');		
		$(id_radio).html(Icon.RADIO);
		
	}

	this._click = function(){						
		this._checks.each(function(index, item){						
			console.log("-====");
			console.log(this);
			console.log(",");
			console.log(item);
					
			if(this !== item){					
				$(item).removeAttr(Define.CHECKED);
			}
		});
	}
	
	this._time = function(time){		
		var year = time.substr(0,4);
		var mon = time.substr(4,2);
		var day = time.substr(6,2);
		var hour = time.substr(8,2);
		
		return {
			year:year,
			mon:mon,
			day:day,
			hour:hour
		}
	}
	
	this._replace = function(word){				
		var gu = ['대덕구 ', '동구 ', '서구 ', '유성구 ', '중구 '];		
		
		for(var idx in gu){				
			var wrd =  word.split(gu[idx]);
			
			if(wrd.length === 2){
				//return wrd[1].trim();
				
				var subWrd = wrd[1].split('(');
				
				if(subWrd.length > 1){
					
					return subWrd[0].trim();
				}
				else{
					return wrd[1].trim();
				}
			}							
		};		
	}
	
	this.select = function() {
		console.log("select - 1");
		
		var road = '';
		var dsrSeq = '';
		var regDtime = '';
		var dong = '';		
		var dongEx = '';
		var lat='';
		var log='';
		
		var self = this;
		
		this._checks.each(function(index, item) {
			var is = $(item).is(Define.COLON_CHECKED);
			if (is === false){
				console.log("not found param : " + JSON.stringify(item));
				return true;
			}

			var param = { seq: $(item).attr(Define.DATA_SEQ), delYn: Define.YES };
						
			road = self._replace($(item).attr(Define.DATA_ROAD));
			
			dongEx = $(item).attr(Define.DATA_DONG);
			dong = self._replace(dongEx);			
			dong = self._setDong(dong);
			
			regDtime = self._time($(item).attr(Define.DATA_REG_DTIME));
			dsrSeq = $(item).attr(Define.DATA_DSR_SEQ);		
			
			lat=$(item).attr(Define.DATA_LAT);
			log=$(item).attr(Define.DATA_LOG);
										
			console.log("found param : " + JSON.stringify(param));			
			console.log("select - 2");			
			
			return false;

		});
		
		console.log("select - 3");
				
		return {
			dsrSeq:dsrSeq, 
			road:road,
			dong:dong,
			dongEx:dongEx,
			regDtime:regDtime,
			lat:lat,
			log:log,
		};
	}
	
	this._setDong = function(dong){	
		
		var DONG = '동';
		var dongs = dong.split(DONG + ' ');
				
		if(dongs.length > 1){
			return dongs[0] + DONG; 
		}
		
		return '';
	}
		
}