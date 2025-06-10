<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>관리자 화면</title>
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
      <span class="brand-text font-weight-light">관리자 화면</span>
    </a>
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
          <li class="nav-item">
            <a href="<c:url value='/main'/>" class="nav-link active">
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
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
        <p>Welcome to the AdminLTE dashboard.</p>
      </div>
    </section>
  </div>

  <aside class="control-sidebar control-sidebar-dark"></aside>
  <footer class="main-footer">
    <strong>&copy; 2024 <a href="#">Multics</a>.</strong> All rights reserved.
  </footer>
</div>
<script src="<c:url value='/AdminLTE-3.2.0/plugins/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/AdminLTE-3.2.0/dist/js/adminlte.min.js'/>"></script>
</body>
</html>
