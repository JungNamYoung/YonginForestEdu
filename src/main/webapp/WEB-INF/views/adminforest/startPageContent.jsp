<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">시작화면 설정</h1>
			</div>
		</div>
	</div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card">
			<div class="card-body">
				<form method="post" action="<c:url value='/admin/start-page'/>">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="page" id="pageIndex" value="/forest/landscape" ${startPage == '/forest/landscape' ? 'checked' : ''}> <label class="form-check-label" for="pageIndex">가로형(여러 이미지 롤링)</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="page" id="pageEvent" value="/forest/portrait" ${startPage == '/forest/portrait' ? 'checked' : ''}> <label class="form-check-label" for="pageEvent">세로형(하나의 이미지 고정)</label>
					</div>
					<button type="submit" class="btn btn-primary mt-3">선택</button>
				</form>
			</div>
		</div>

		<div class="card">
			<div class="card-header bg-light">이미지 설정</div>
			<div class="card-body">
				<form method="post" action="<c:url value='/admin/landscape-image'/>">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="landScapeImages" id="images-rolling" value="images-rolling" ${landScapeImages== 'images-rolling' ? 'checked' : ''}> <label class="form-check-label" for="pageIndex">이미지 롤링</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="landScapeImages" id="image-fixed" value="image-fixed" ${landScapeImages == 'image-fixed'?'checked':''}> <label class="form-check-label" for="pageEvent">고정형</label>
					</div>
					<button type="submit" class="btn btn-primary mt-3">선택</button>
				</form>
			</div>
		</div>

		<div class="card">
			<div class="card-header bg-light">이미지 롤링</div>
			<div class="card-body">
				<form method="post" action="<c:url value='/admin/landscape/images-rolling'/>" enctype="multipart/form-data">
					<div class="form-group">
						<label for="files"> 이미지 파일 선택</label> 
						<input type="file" name="files" id="files" multiple class="form-control-file" />
					</div>
					<button type="submit" class="btn btn-primary">업로드</button>
				</form>
			</div>
			<h5 class="card-title mt-4 mb-2 border-top pb-2">업로드된 이미지</h5>
			<div class="card-body">
				<div class="row">
					<c:forEach var="fileVo" items="${listFileVo}">
						<div class="col-md-3 text-center mb-4">
							<img class="img-fluid" src="${fileVo.getFilePath()}" alt="${fileVo.getFileName()}" />
							<form method="post" action="<c:url value='/admin/landscape/images-rolling/delete'/>" class="mt-2">
								<input type="hidden" name="filename" value="${fileVo.getFileName()}" />
								<button type="submit" class="btn btn-danger btn-sm">삭제</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card-header bg-light">이미지 고정형</div>
			<div class="card-body">
				<form method="post" action="<c:url value='/admin/landscape/image-fixed'/>" enctype="multipart/form-data">
					<div class="form-group">
						<label for="files"> 이미지 파일 선택</label> 
						<input type="file" name="files" id="files" multiple class="form-control-file" />
					</div>
					<button type="submit" class="btn btn-primary">업로드</button>
				</form>
			</div>
			<h5 class="card-title mt-4 mb-2 border-top pb-2">업로드된 이미지</h5>
			<div class="card-body">
				<div class="row">
					<c:forEach var="fileVo" items="${listPortraitFileVo}">
						<div class="col-md-3 text-center mb-4">
							<img class="img-fluid" src="${fileVo.getFilePath()}" alt="${fileVo.getFileName()}" />
							<form method="post" action="<c:url value='/admin/landscape/image-fixed/delete'/>" class="mt-2">
								<input type="hidden" name="filename" value="${fileVo.getFileName()}" />
								<button type="submit" class="btn btn-danger btn-sm">삭제</button>
							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
</section>