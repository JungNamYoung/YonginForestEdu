
function Paging(){

	this._searchType=0; 
	this._searchLine=0; 
	this._searchText=0;	
	this._id_form_pre = 'id_form_search';	
	this._name_form = 'form_search';	
	this._id_form = '#'+ this._id_form_pre;	
	
	this._cudaInfo= '';
	this._url = '';
	this._searchSortOrder=''; // asc, desc
	this._searchSortType='';
	
	this.xSubmitPre = null;
	
	this._searchPageCurrent=0;
	this._searchPageCnt=0;		
	//this._pageStep = 15;
	this._pageStep = 10;
	
	this.currentPage = function(){	
		var currentPage = $('#id_paging li.active div').text() - Define.INDEX_1;
		return currentPage;
	}
	
	this.init = function(cudaInfo, url){
			
		this._url = url;
		
		this._searchType 		= cudaInfo.xsearchType;	
		this._searchLine 		= cudaInfo.xsearchLine;
		this._searchText 		= cudaInfo.xsearchText;
		this._searchPageCurrent = cudaInfo.xsearchPageCurrent;
		this._searchPageCnt		= cudaInfo.xsearchPageCnt;				
		this._searchSortOrder 	= cudaInfo.xsearchSortOrder;
		this._searchSortType	= cudaInfo.xsearchSortType;
		
		this.setSearchText();
		
		this.mkPaging();
		this.pageActive();
		this.setScroll();
		
		$('#id_reg_date_from').val(this._cudaInfo['xsearchDateFrom']);
		$('#id_reg_date_to').val(this._cudaInfo['xsearchDateTo']);
	}
	
	this.sort = function(){		
		return {order:this._searchSortOrder, type:this._searchSortType};
	}
	
	this.setValue = function(id, name){
	
		var value = this._cudaInfo[name];
		
		$('#'+id).val(value);
	}
	
	this.getValue = function(name, not_attach_url){
	
		if(not_attach_url === true){
			var result = this._cudaInfo[name];
		
			if(result === undefined){
				return Define.STR_BLANK;
			}
		
			return this._cudaInfo[name];
		
		}
		else{
			var result = this._cudaInfo[name];
			
			if(result === undefined){
					return Define.STR_BLANK;
			}
			
			return this._cudaInfo[name];
		}
	}
	
	this.pageActive = function(){
	
		var pageCurrent = this._searchPageCurrent;
		
		$('li.page-item.page-num').each(function(index, item){
			if(index == pageCurrent){
				$(item).addClass('active');		
			}
			else{
				$(item).removeClass('active');	
			}
		});	
	}
	
	this.setSearchText = function (){
	
//		if(this._searchType !== undefined){
		$('#id_search_type').val(this._searchType).prop(Define.SELECTED, true);
//		}
//		else
//		    $('#id_search_type').val(Cuda.INIT).prop(Define.SELECTED, true);
		    
		$('#id_search_line').val(this._searchLine).prop(Define.SELECTED, true);
		$('#id_search_text').val(this._searchText);
	}

	this.xSubmit = function(pageCurrent, url, tSort){
	
		//sessionStorage.setItem('pageCurrent', pageCurrent);
		
		if(this.xSubmitPre !== null) 
			this.xSubmitPre();
		
		_Util.addInput(this._name_form, Cuda.XSEARCH_PAGE_CURRENT, pageCurrent, this._id_form_pre);
		_Util.addInput(this._name_form, Cuda.XSEARCH_SCROLL_TOP, 0, this._id_form_pre);
		_Util.addInput(this._name_form, Cuda.XSEARCH_SORT_ORDER, tSort.order, this._id_form_pre);
		_Util.addInput(this._name_form, Cuda.XSEARCH_SORT_TYPE, tSort.type, this._id_form_pre);
		_Util.addInput(this._name_form, Cuda.XSEARCH_PAGE_FIX, true, this._id_form_pre);
		_Util.addInput(this._name_form, Cuda.XSEARCH_PAGE_CLICK, true, this._id_form_pre);
		
		
		if(url === undefined || url === Define.STR_BLANK){
			$(this._id_form).attr(Define.ACTION, this._url);
		}
		else
			$(this._id_form).attr(Define.ACTION, url);
		
		
		$(this._id_form).submit();
		$(this._id_form).attr(Define.ACTION, Define.STR_BLANK);
	}

	this.prePageStep = function(){
	
		//var page = pageCurrent - Define.COUNT_1;
		//var page = Number(this._searchPageCurrent) - this._pageStep;
		
		var page = this.calStartPage() - this._pageStep;;
		
		if(page < 0)
			return;
		
		this.setCurrentPage(page);
	}
	
	this.nextPageStep = function(){
				
		//var page = pageCurrent + Define.COUNT_1;		
		//var page = Number(this._searchPageCurrent) + this._pageStep;
		
		var page = this.calStartPage() + this._pageStep;
				
		if(page >= this.calEndPage())
			return;
		
		this.setCurrentPage(page);
	}
	
	this.setCurrentPage = function(page){
		_Util.addInput(this._id_form_pre, Cuda.XSEARCH_PAGE_CURRENT, page);
		_Util.addInput(this._id_form_pre, Cuda.XSEARCH_SCROLL_TOP, 0);
		_Util.addInput(this._id_form_pre, Cuda.XSEARCH_PAGE_FIX, false);
		_Util.addInput(this._name_form, Cuda.XSEARCH_PAGE_CLICK, true, this._id_form_pre);
		
		$(this._id_form).attr(Define.ACTION, this._url);
		$(this._id_form).submit();
		$(this._id_form).attr(Define.ACTION, Define.STR_BLANK);
	}	
	
	this.start = function(page){
		this.setCurrentPage(page);
	}
	
	this.end = function(page){
		this.setCurrentPage(page);
	}
	
	this.calStartPage = function(){
	
		var startPage = (Math.floor(this._searchPageCurrent / this._pageStep) * this._pageStep);
		
		return startPage;
	}
	
	this.calEndPage = function(){	
		//var end = Math.ceil(this._searchPageCnt );
		return this._searchPageCnt;
	}
	
	this.mkPaging = function(){
		
		var data = "";
		
		for(var page = Define.INDEX_0; page < this._searchPageCnt; ++page){
	
			var style = `style="display:none"`;;
			
			var flag_1 =  (this.calStartPage() <= page);
			
			var flag_2 = page < (this.calStartPage() + this._pageStep);
			
			// show
			if(flag_1 && flag_2){
				style = "";
		}
		
			
			data += `<li class="page-item page-num" ` + style + `><div class="page-link" onclick="_Paging.xSubmit(${page}, Define.STR_BLANK, _SortEx.value()); ">${ Number(page) + Define.INDEX_1}</div></li>`;
		}
		
		
		var endPage = this._searchPageCnt - Define.INDEX_1;
		
		if(endPage < Define.COUNT_0){
			endPage = Define.INDEX_0;
		}
		
		// <li class="page-item"><div class="page-link text-dark" onclick="_Paging.prePageStep();">(-`  + this._pageStep +  `)</div></li>
		// <li class="page-item"><div class="page-link text-dark" onclick="_Paging.nextPageStep(); ">(+` + this._pageStep + `)</div></li>	  	 
		var html = `		
					
			<li class="page-item"><div class="page-link text-dark" onclick="_Paging.start(Define.INDEX_0);">처음</div></li>
		 	<li class="page-item"><div class="page-link text-dark" onclick="_Paging.prePageStep();">이전</div></li>
	  	` +  		
  		data 		
  		+
  		`
	  		<li class="page-item"><div class="page-link text-dark" onclick="_Paging.nextPageStep();">다음</div></li>
	  	    <li class="page-item"><div class="page-link text-dark" onclick="_Paging.end(` + endPage + `); ">끝</div></li>
  	  	`;
  	  	
  	  	//<li class="page-item"><div class="page-link text-dark" onclick="_Paging.end(${this._searchPageCnt} - Define.INDEX_1); ">끝</div></li>
  	  	$('#id_paging').html(html);
	}
	
	this.setScroll = function(){
		$(document).scrollTop(this.getValue(Cuda.XSEARCH_SCROLL_TOP));
	}
	
	this.getScroll = function(){
		var height = $(document).scrollTop();
		return 'xsearchScrollTop=' + height;
	}
	
	this.addInput = function(key, value){
		_Util.addInput(this._id_form_pre, key, value);
	}
}

const _Paging = new Paging();
