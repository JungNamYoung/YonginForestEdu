<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
    <title>Kiosk Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0EvHe/X+R7Yk4U5j+pMQ6H6X/w1nUJ3o0ieGizqPLFornptc88UOeB7Wj1g2CjUm" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Forest Admin</a>
    <div class="navbar-nav">
        <div class="nav-item text-nowrap">
            <a class="nav-link px-3" href="<c:url value='/logout'/>">Logout</a>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Kiosk</a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h2 class="mt-4">Kiosk List</h2>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>centerId</th>
                        <th>placeId</th>
                        <th>kioskId</th>
                        <th>kioskName</th>
                        <th>kioskIp</th>
                        <th>createDate</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="result" items="${results}">
                        <tr>
                            <td>${result.centerId}</td>
                            <td>${result.placeId}</td>
                            <td>${result.kioskId}</td>
                            <td>${result.kioskName}</td>
                            <td>${result.kioskIp}</td>
                            <td><fmt:formatDate value="${result.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76A08DDYXoq6Dg0KTAfSPDHrjF3jLri9N7/N6Pli1FnjSVHY8GkLEFJAgYfZJQG" crossorigin="anonymous"></script>
</body>
</html>