

function delete_Chat(){

   this.display = function(type, tUrl){

   		var DISASTER = 'disaster';
   		var EYE = 'eye';	
   		
   		var port = '';
   		
   		if(type === DISASTER)
   			port=7373;
   		else if(type === EYE){
   			port=7575;
   		}
   		
   		if(tUrl === undefined){
   			tUrl = '';
   		}
   		
   		var url = 
   		//`http://192.168.0.102:${port}/cnuh`
   		
   		tUrl
   		;   	
   		window.open(url, '_blank', 'width=500, height=700, status=yes, location=yes, toolbar=yes, scrollbars=yes');
   }

}


//var _Chat = new Chat();