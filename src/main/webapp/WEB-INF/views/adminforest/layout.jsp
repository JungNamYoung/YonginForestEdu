<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin-YonginForestEd</title>
<link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css'/>">
<link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/dist/css/adminlte.min.css'/>">
<link rel="stylesheet" href="<c:url value='/admin-forest/css/custom-admin.css'/>">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<nav class="main-header navbar navbar-expand navbar-white navbar-light">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="<c:url value='/admin/logout'/>">Logout</a></li>
			</ul>
		</nav>

		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<a href="#" class="brand-link"> <span class="brand-text font-weight-light">Admin-YonginForestEd</span>
			</a>
			<div class="sidebar">
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
						<li class="nav-item"><a href="<c:url value='/admin/dashboard'/>" class="nav-link ${param.menu eq 'dashboard' ? 'active' : ''}"> <i class="nav-icon fas fa-tachometer-alt"></i>
								<p>Dashboard</p>
						</a></li>

						<li class="nav-item"><a href="<c:url value='/admin/kiosk'/>" class="nav-link ${param.menu eq 'kiosk' ? 'active' :''}"> <i class="nav-icon fas fa-desktop"></i>
								<p>Kiosk</p>
						</a></li>
						<li class="nav-item"><a href="<c:url value='/admin/landscape'/>" class="nav-link ${param.menu eq 'landscape' ? 'active' : ''}"> <i class="nav-icon fas fa-image"></i>
								<p>시작화면(가로형)</p>
						</a></li>
						<li class="nav-item"><a href="<c:url value='/admin/portrait'/>" class="nav-link ${param.menu eq 'portrait' ? 'active' : ''}"> <i class="nav-icon fas fa-image"></i>
								<p>시작화면(세로형)</p>
						</a></li>
						
						<li class="nav-item"><a href="<c:url value='/admin/main-page'/>" class="nav-link ${param.menu eq 'mainPage' ? 'active' : '' }"> <i class="nav-icon fas fa-home"></i>
								<p>시작화면 설정</p>
						</a></li>
						<li class="nav-item"><a href="<c:url value='/admin/footer-image'/>" class="nav-link ${param.menu eq 'footerImage' ? 'active' : ''}"> <i class="nav-icon fas fa-file-image"></i>
								<p>footer 설정</p>
						</a></li>
						<li class="nav-item"><a href="<c:url value='/admin/logs'/>" class="nav-link ${param.menu eq 'logs' ? 'active' : ''}"> <i class="nav-icon fas fa-book"></i>
								<p>로그</p>
						</a></li>
						<li class="nav-item has-treeview ${param.menu eq 'users' ? 'menu-open' : ''}">
							<a href="<c:url value='/admin/users'/>" class="nav-link ${param.menu eq 'users' ? 'active': ''}"> <i class="nav-icon fas fa-users"></i>
								<p>
									Users <i class="right fas fa-angle-left"></i>
								</p>
							</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="<c:url value='/admin/users'/>" class="nav-link ${param.submenu eq 'userList' ? 'active': ''}"> <i class="far fa-circle nav-icon"></i>
										<p>사용자 조회</p>
								</a></li>
								<li class="nav-item"><a href="<c:url value='/admin/register'/>" class="nav-link ${param.submenu eq 'register' ? 'active':''}"> <i class="far fa-circle nav-icon"></i>
										<p>사용자 등록</p>
								</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</aside>

		<div class="content-wrapper">
			<jsp:include page="${param.content}" />
		</div>

		<aside class="control-sidebar control-sidebar-dark"></aside>
		<footer class="main-footer">
			<strong>&copy; 2024 <a href="#">Admin-YonginForestEd</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<script src="<c:url value='/AdminLTE-3.2.0/plugins/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/AdminLTE-3.2.0/dist/js/adminlte.min.js'/>"></script>
</body>
</html>
