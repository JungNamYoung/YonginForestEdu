<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin-YonginForestEd</title>
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/AdminLTE-3.2.0/dist/css/adminlte.min.css'/>">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="<c:url value='/logout'/>">Logout</a>
      </li>
    </ul>
  </nav>

  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="#" class="brand-link">
      <span class="brand-text font-weight-light">Admin-YonginForestEd</span>
    </a>
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
          <li class="nav-item">
            <a href="<c:url value='/main'/>" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value='/kiosk'/>" class="nav-link">
              <i class="nav-icon fas fa-desktop"></i>
              <p>Kiosk</p>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </aside>

  <div class="content-wrapper">
    <jsp:include page="${param.content}" />
  </div>

  <aside class="control-sidebar control-sidebar-dark"></aside>
  <footer class="main-footer">
    <strong>&copy; 2024 <a href="#">Admin-YonginForestEd</a>.</strong> All rights reserved.
  </footer>
</div>
<script src="<c:url value='/AdminLTE-3.2.0/plugins/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/AdminLTE-3.2.0/dist/js/adminlte.min.js'/>"></script>
</body>
</html>
