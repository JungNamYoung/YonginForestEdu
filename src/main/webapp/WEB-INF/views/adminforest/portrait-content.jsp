
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">1장 이미지 설정</h1>
			</div>
		</div>
	</div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card mb-3">
			<div class="card-body">
				<c:if test="${not empty errorFixed}">
					<div class="alert alert-danger" role="alert">${errorFixed}</div>
				</c:if>
				<form method="post" action="<c:url value='/admin/portrait/upload'/>" enctype="multipart/form-data">
					<div class="form-group">
						<label for="files"> 이미지 파일 선택(가로:2064 x 세로:3000)</label> <input type="file" name="files" id="files" class="form-control-file" />
					</div>
					<button type="submit" class="btn btn-primary">업로드</button>
				</form>
			</div>
		</div>
		<div class="row">
			<c:forEach var="fileVo" items="${listFileVo}">
				<div class="col-md-3 text-center mb-4">
					<img class="img-fluid" src="${fileVo.getFilePath()}" alt="${fileVo.getFileName()}" />
					<form method="post" action="<c:url value='/admin/portrait/delete'/>" class="mt-2">
						<input type="hidden" name="filename" value="${fileVo.getFileName()}" />
						<button type="submit" class="btn btn-danger btn-sm">삭제</button>
					</form>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
