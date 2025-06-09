<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<title>Home</title>
</head>
<body>
	<table>
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
</body>
</html>