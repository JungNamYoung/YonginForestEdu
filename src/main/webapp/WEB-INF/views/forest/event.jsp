<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>용인산림교육센터</title>
<%-- <link rel="stylesheet" href="<c:url value="/forest/css/swiper-bundle.min.css"/>"> --%>
<%-- <link rel="stylesheet" href="<c:url value="/forest/css/style.css"/>"> --%>
</head>

<body class="intro__body">
	<div class="container page">
		<header role="banner">
			<div class="header__logoArea">
				<img class="header__logo" src="<c:url value="/forest/assets/images/용인시_심볼 1.png"/>" alt="용인시 공식 로고" />
				<h1 class="header__title">용인산림교육센터</h1>
			</div>
			<div class="header__timeArea">
				<p id="header__time" class="header__time" aria-live="polite" aria-atomic="true"></p>
			</div>
		</header>
		<main role="main">
			<img src="${oneImagePath}"/>
		</main>
	</div>
</body>
</html>