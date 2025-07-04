<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">요청 로그 통계</h1>
			</div>
		</div>
	</div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card">
			<div class="card-body">
				<form method="get" action="">
					<div class="form-row align-items-end">
						<div class="col-auto">
							<label> From</label> <input type="date" class="form-control" name="from" value="${from}">
						</div>
						<div class="col-auto">
							<label>To</label> <input type="date" class="form-control" name="to" value="${to}">
						</div>
						<div class="col-auto">
							<button type="submit" class="btn btn-primary">조회</button>
							<a class="btn btn-success" href="<c:url value='/admin/logs/excel?from=${from}&to=${to}'/>">엑셀 다운로드</a>
						</div>
					</div>
				</form>
				<div class="table-responsive mt-3">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th>Controller</th>
								<th>Method</th>
								<th>이름</th>
								<th>Count</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="s" items="${stats}">
								<tr>
									<td>${s.controller}</td>
									<td>${s.method}</td>
									<td>${s.nameText}</td>
									<td>${s.count}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>