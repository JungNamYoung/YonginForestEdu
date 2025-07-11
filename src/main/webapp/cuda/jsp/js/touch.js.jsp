<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
let inactivityTimer;

function resetInactivityTimer(){
	clearTimeout(inactivityTimer);
	
	inactivityTimer = setTimeout(() => {
// 		const page = document.querySelector('.page');
		
// 		if(page) {
// 			page.classList.add('fade-out');
// 		}
		
		setTimeout(() => {
			location.replace(App.rootPath + '/forest/landscape');
		}, 500);
	},30000);
}
	
	 resetInactivityTimer();
	 document.addEventListener('keydown', resetInactivityTimer);
	 document.addEventListener('touchstart', resetInactivityTimer);
</script>