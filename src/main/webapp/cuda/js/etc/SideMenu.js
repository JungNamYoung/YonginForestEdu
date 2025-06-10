
const SideMenu = {
	MENU:'menu',
	COLLAPSE:'collapse',
	ACTIVE:'active fw-bold',
	A_NAV_LINK:'li a.nav-link',
	DEFAULT_MENU:'id_menu_not_use',
	CLASS:'class',
	NEAR:'경',
	A_SHARP:'a#',
	ID:Define.ID,
	DATA_HREF:'data-href',	
	
	init:function(home){
		
		//var self = this;
		
		if(home === undefined || home === false){
			SideMenu._setMenu();
		}	
		 
		$(SideMenu.A_NAV_LINK).click(function(){
		 	SideMenu._inactive();
			SideMenu._go(this, false, true);
		});
		 
		$('.mul-collapse').click(function(){
		 
		 	var aaa = $('#id_collapse').attr(SideMenu.CLASS);
		 	
		 	if($('#id_collapse').attr(SideMenu.CLASS) ==='collapse mul-collapse-child'){ 
		    	$('#id_collapse').attr(SideMenu.CLASS, 'collapse show mul-collapse-child');
		    }
		    else{
		    	$('#id_collapse').attr(SideMenu.CLASS, 'collapse mul-collapse-child');
		    }
		    
		    sessionStorage.setItem(SideMenu.COLLAPSE, $('#id_collapse').attr(SideMenu.CLASS));
		    
		});
 	}, 

	_inactive:function(){
	
		 $(SideMenu.A_NAV_LINK).each(function(index, item){		 
			 $(item).removeClass(SideMenu.ACTIVE);
		 });
	
	},
	
 	_setMenu:function(){
 		
 		var tCollapse = sessionStorage.getItem(SideMenu.COLLAPSE);
 		
 		$('#id_collapse').attr(SideMenu.CLASS, tCollapse);
 	
		var menu = sessionStorage.getItem(SideMenu.MENU);
		 
		this._inactive();
		 
		 if( menu === null){
			 menu = SideMenu.DEFAULT_MENU;
		 }
		 
		 var temp1 = SideMenu.A_SHARP + menu;
		 
		 var menu01 = $(SideMenu.A_SHARP + menu);
		 
		 if($(SideMenu.A_SHARP + menu).length > 0){
		 	SideMenu._go(menu, true, false);	
		 }
		 else{
		 	SideMenu._go(SideMenu.DEFAULT_MENU, true, false);	 
		 }
 	},	
 	
 	_go:function(tParam, flag, move){
 	
 		if(flag === false){
 		
 			$(tParam).addClass(SideMenu.ACTIVE);
		 	
			// console.log("id = " + $(tParam).attr(SideMenu.ID));
			 
			sessionStorage.setItem(SideMenu.MENU, $(tParam).attr(SideMenu.ID));
			 
			if($(tParam).attr(SideMenu.DATA_HREF) !== undefined && move === true)
				location.href = $(tParam).attr(SideMenu.DATA_HREF);
 		}
 		else{
 		 	$(SideMenu.A_SHARP + tParam).addClass(SideMenu.ACTIVE);
		 	
		 	// console.log(SideMenu.A_SHARP + tParam);
		 			 
		 	sessionStorage.setItem(SideMenu.MENU, tParam);
		 	
		 	if($(SideMenu.A_SHARP + tParam).attr(SideMenu.DATA_HREF) !== undefined && move === true)
		 		location.href = $(SideMenu.A_SHARP + tParam).attr(SideMenu.DATA_HREF);
		 	
		}
 	}
}