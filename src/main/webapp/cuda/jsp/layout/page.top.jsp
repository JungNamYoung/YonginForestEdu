<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script>

function signOut(){ 	
	const modalLogout = new Modal('id-modal-confirm');
 	modalLogout.showModal();
 	
 	$('#id-modal-confirm #id_btn_confirm').attr(Define.ON_CLICK, 'signOutOk();');
}

function signOutOk(){
	location.href="<c:url value='/logout.do'/>";
}

</script>

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-1 shadow">
	<div class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-4"> 제 목 </div>

	<button class="navbar-toggler position-absolute d-md-none" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="true" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

<!-- 	<div class="form-control form-control-dark w-100 rounded-0 border-0"></div> -->

	<div class="navbar-nav">
		<div class="nav-item text-nowrap">
			<a class="nav-link px-3" onclick="signOut();"> Sign out <span style="color:#FFFFFF">(${ssXsearchId}:${ssXsearchName})</span> </a>
		</div>
	</div>
</header>
