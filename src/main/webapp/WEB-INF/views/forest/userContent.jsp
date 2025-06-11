
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">User List</h1>
      </div>
    </div>
  </div>
</div>
<section class="content">
  <div class="container-fluid">
    <div class="card">
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-striped table-sm">
            <thead>
              <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Enabled</th>
                <th>Created At</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="user" items="${users}">
                <tr>
                  <td>${user.userId}</td>
                  <td>${user.username}</td>
                  <td>${user.email}</td>
                  <td>${user.role}</td>
                  <td>${user.enabled}</td>
                  <td><fmt:formatDate value="${user.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <nav>
          <ul class="pagination justify-content-center">
            <c:forEach var="p" begin="1" end="${totalPages}">
              <li class="page-item ${p == currentPage ? 'active' : ''}">
                <a class="page-link" href="<c:url value='/users?page=${p}'/>">${p}</a>
              </li>
            </c:forEach>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</section>
