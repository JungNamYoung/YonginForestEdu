+52
-41

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/dist/css/adminlte.min.css'/>">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Admin</b>LTE</a>
  </div>
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>
      <c:if test="${not empty error}">
        <div class="alert alert-danger" role="alert">${error}</div>
      </c:if>
      <form method="post" action="<c:url value='/login'/>">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Username" name="username" value="admin">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Password" name="password" value="1234">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8"></div>
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="<c:url value='/AdminLTE-3.2.0/plugins/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/AdminLTE-3.2.0/dist/js/adminlte.min.js'/>"></script>
</body>
</html>