
function Path(_url, _rootPath){

	this.rootPath = function(){
	
		var search = _url.search(_rootPath);
		
		search = search + _rootPath.length;
		
		const url = _url.substr(0, search);
		
		return url;	
	}

}