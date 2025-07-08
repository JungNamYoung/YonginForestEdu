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
				<form method="post" action="<c:url value='/admin/main-page'/>">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="page" id="pageIndex" value="/forest/index" ${defaultPage == '/forest/index' ? 'checked' : ''}> 
						<label class="form-check-label" for="pageIndex">대기화면(가로형-이미지 롤링)</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="page" id="pageEvent" value="/forest/event" ${defaultPage == '/forest/event' ? 'checked' : ''}> 
						<label class="form-check-label" for="pageEvent">행사화면(세로형-이미지 고정)</label>
					</div>
					<button type="submit" class="btn btn-primary mt-3">선택</button>
				</form>
			</div>
		</div>
	</div>
</section>