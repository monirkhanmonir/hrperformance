<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="employeeHeader.jsp"></jsp:include>
<div class="inner_page-banner one-img"></div>
<!-- short -->
<div class="using-border py-3">
	<div class="inner_breadcrumb  ml-4">
		<ul class="short_ls">
			<li><a href="index.html">Home</a> <span>/ /</span></li>
			<li>Profile</li>
		</ul>
	</div>
</div>
<!-- //short-->

<%-- <h2>User Name IS ${pageContext.request.remoteUser}</h2> --%>

<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">Users Profile</div>
				<div class="card-body">
					<div class="col-lg-6">
						<h5 class="card-title">Users Basic information</h5>
						<table class="table">
							<c:forEach var="user" items="${users}">
								<tr>
									<th>Id No:</th>
									<td>${user.id}</td>
								</tr>
								<tr>
									<th>Name:</th>
									<td>${user.empName}</td>
								</tr>
								<tr>
									<th>Email:</th>
									<td>${user.empEmail}</td>
								</tr>
								<tr>
									<th>Gender:</th>
									<td>${user.gender}</td>
								</tr>
								<tr>
									<th>Job Title:</th>
									<td>${user.jobTitle}</td>
								</tr>
								<tr>
									<th>Date Of Birth:</th>
									<td>${user.birthDate}</td>
								</tr>
								<tr>
									<th>Join Date:</th>
									<td>${user.birthDate}</td>
								</tr>
								<tr>
									<th>Address:</th>
									<td>${user.address}</td>
								</tr>
							</c:forEach>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>