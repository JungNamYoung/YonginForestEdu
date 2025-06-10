
var FingerPrint = {
	 _parse : function(kor) {
	    const f = ['ㄱ', 'ㄲ', 'ㄴ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㅁ',
	               'ㅂ', 'ㅃ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ',
	               'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'];
	    const s = ['ㅏ', 'ㅐ', 'ㅑ', 'ㅒ', 'ㅓ', 'ㅔ', 'ㅕ',
	               'ㅖ', 'ㅗ', 'ㅘ', 'ㅙ', 'ㅚ', 'ㅛ', 'ㅜ',
	               'ㅝ', 'ㅞ', 'ㅟ', 'ㅠ', 'ㅡ', 'ㅢ', 'ㅣ'];
	    const t = ['', 'ㄱ', 'ㄲ', 'ㄳ', 'ㄴ', 'ㄵ', 'ㄶ',
	               'ㄷ', 'ㄹ', 'ㄺ', 'ㄻ', 'ㄼ', 'ㄽ', 'ㄾ',
	               'ㄿ', 'ㅀ', 'ㅁ', 'ㅂ', 'ㅄ', 'ㅅ', 'ㅆ',
	               'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'];
	
	    const ga = 44032;
	    let uni = kor.charCodeAt(0);
	
	    uni = uni - ga;
	
	    let fn = parseInt(uni / 588);
	    let sn = parseInt((uni - (fn * 588)) / 28);
	    let tn = parseInt(uni % 28);
	
	    return {
	        f: f[fn],
	        s: s[sn],
	        t: t[tn]
	    };
	}, 
	
	update : function(dong, words, _url) {
	
		self = this;
	
		dong.forEach(function(item){
				
			var signCode = "";
					
			for(var index = 0; index <item.nm.length; ++index ){
				var ch = item.nm.charAt(index);				
				var par = self._parse(ch);
				//par = null;
				
					
				for(var i = 0; i < words.length; ++i){
				
					var find = words[i].wrd;
					
					find = find.replace("-1", "");
					//find = find.replace("-2", "");
					
					if(find.indexOf("-2") > -1){
						continue;
					}
					
					if(find === (par.f)){
						if(signCode.length > 0){
							signCode +=  ",";
						}
						
						signCode += words[i].maCodeNo; 
					}
					
					if(find === par.s){
						if(signCode.length > 0){
							signCode +=  ",";
						}
						
						signCode += words[i].maCodeNo;
					}
					
					if(find  === (par.t + "(받침)")){
						if(signCode.length > 0){
							signCode +=  ",";
						}
						signCode += words[i].maCodeNo;
					}
				}
				
				// console.log("ch : signCode = " + ch + " : " + signCode); 						
			}	
			
			
			console.log("item.nm : signCode = " + item.nm + " : " + signCode);
			
			/*
			var data = {
				fingerPrint:signCode,
				seq:item.seq
			}
			
			$.post(_url, param, function(data, status){
			});
			*/
		});
		
	},
	
}

