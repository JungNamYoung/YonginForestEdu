<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav id="sidebarMenu" class="col-2 bg-dark">
	<div class="position-sticky pt-3 sidebar-sticky">
		<ul class="nav flex-column">

			<c:forEach var="authMenu" items="${authMenus}" varStatus="status">
						
				<c:if test="${authMenu.collapse eq ''}">
					<li class="nav-item">					
						<a id="id_menu_${status.count}" class="nav-link p-1 fw-light" data-href="<c:url value='${authMenu.url}'/>">${authMenu.name}</a>
					</li>
				</c:if>
				
				<c:if test="${authMenu.collapse eq '0'}">
					<li class="nav-item">						
						<a class="nav-link mul-collapse text-decoration-underline" id="id_collapse_${status.count}">${authMenu.name}</a>
					</li>
				</c:if>											
				
				<c:if test="${authMenu.collapse eq 'start'}">
					<div class="collapse mul-collapse-child" id="id_collapse">
					   <ul class="nav flex-column">
					   	<li class="px-3">
					    	<a id="id_menu_${status.count}" class="nav-link p-1 fw-light" data-href="<c:url value='${authMenu.url}'/>">${authMenu.name}</a>
					   	</li>				      
				</c:if>
				
				<c:if test="${authMenu.collapse eq 'body'}">
						  <li class="px-3">
						  	<a id="id_menu_${status.count}" class="nav-link p-1 fw-light" data-href="<c:url value='${authMenu.url}'/>">${authMenu.name}</a>
						  </li>
				</c:if>
				
				<c:if test="${authMenu.collapse eq 'end'}">					
					      <li class="px-3">
					      	<a id="id_menu_${status.count}" class="nav-link p-1 fw-light" data-href="<c:url value='${authMenu.url}'/>">${authMenu.name}</a>
					      </li>				      
					   </ul>
					</div>
				</c:if>
				
			</c:forEach>
		</ul>
	</div>
</nav>