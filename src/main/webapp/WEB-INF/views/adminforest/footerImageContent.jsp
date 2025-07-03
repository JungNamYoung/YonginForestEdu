
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">이미지 관리</h1>
			</div>
		</div>
	</div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card mb-3">
			<div class="card-body">
				<form method="post" action="<c:url value='/admin/footer-image/upload'/>" enctype="multipart/form-data">
					<div class="form-group">
						<label for="file"> 이미지 파일 선택</label> <input type="file" name="file" id="file" class="form-control-file" />
					</div>
					<button type="submit" class="btn btn-primary">업로드</button>
				</form>
			</div>
		</div>
		<div class="card">
			<div class="card-body text-center">
				<img class="img-fluid" src="<c:url value='${currentImage}'/>" alt="현재 이미지" />
			</div>
		</div>
	</div>
</section>
