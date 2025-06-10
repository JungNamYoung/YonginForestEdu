<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-XLm0yW4XUO2mZkLbjrKMgVZSBaXQ9DPefJ9vIvHyip2th0fD8OcTogQSCOf6yOKN"
	crossorigin="anonymous" />
</head>
<body class="bg-light text-dark">
	<div class="container py-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card shadow-sm">
					<div class="card-body">
						<h2 class="card-title mb-4 text-center">Login</h2>
						<c:if test="${not empty error}">
							<div class="alert alert-danger" role="alert">${error}</div>
						</c:if>
						<form method="post" action="/login">
							<div class="mb-3">
								<label class="form-label">Username</label> <input type="text"
									class="form-control" name="username" />
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" class="form-control" name="password" />
							</div>
							<button type="submit" class="btn btn-primary w-100">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-QEDfXGmZt/j2l9IgdWWor2exdFBzPeSdPId2WWnrC4X8A43/PKtFOo6EBrb3EY5M"
		crossorigin="anonymous"></script>
</body>
</html>
