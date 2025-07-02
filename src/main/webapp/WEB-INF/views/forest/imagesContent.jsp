<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">메인 이미지 관리</h1>
			</div>
		</div>
	</div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card mb-3">
			<div class="card-body">
				<form method="post" action="<c:url value='/images/upload'/>" enctype="multipart/form-data">
					<div class="form-group">
						<label for="files">이미지 파일 선택</label> <input type="file" name="files" id="files" multiple class="form-control-file" />
					</div>
					<button type="submit" class="btn btn-primary">업로드</button>
				</form>
			</div>
		</div>
		<div class="row">
			<c:forEach var="img" items="${images}">
				<div class="col-md-3 text-center mb-4">
					<img class="img-fluid" src="<c:url value='/forest/assets/images/${img}'/>" alt="${img}" />
					<form method="post" action="<c:url value='/images/delete'/>" class="mt-2">
						<input type="hidden" name="filename" value="${img}" />
						<button type="submit" class="btn btn-danger btn-sm">삭제</button>
					</form>
				</div>
			</c:forEach>
		</div>
	</div>
</section>