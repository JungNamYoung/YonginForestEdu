<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Kiosk List</h1>
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
      </div>
    </div>
  </div>
</section>
