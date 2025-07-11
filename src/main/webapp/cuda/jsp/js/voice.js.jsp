<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	document.querySelectorAll('.main__menu--btn, a, input, button').forEach(el => {
		 el.addEventListener('focus', ()=>{
			 const text = el.getAttribute('aria-label') || el.textContent;
			 const utter = new SpeechSynthesisUtterance(text);
			 speechSynthesis.speak(utter);
		});
	});
</script>
