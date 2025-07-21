<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>페이지를 찾을 수 없습니다</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css'/>">
<link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/dist/css/adminlte.min.css'/>">
</head>
<body class="hold-transition">
	<div class="container mt-5">
		<section class="content text-center">
			<div class="error-page">
				<h2 class="headline text-warning">404</h2>
				<div class="error-content">
					<h3>
						<i class="fas fa-exclamation-triangle text-warning"></i>요청하신 페이지를 찾을 수 없습니다.
					</h3>
					<p>
						<a href="<c:url value='/'/>">메인 페이지로 이동</a>
					</p>
				</div>
			</div>
		</section>
	</div>
	<script src="<c:url value='/AdminLTE-3.2.0/plugins/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/AdminLTE-3.2.0-custom/js/adminlte.min.js'/>"></script>
</body>
</html>