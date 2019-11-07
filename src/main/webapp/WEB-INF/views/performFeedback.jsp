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
			<li>Employee//Feedback</li>
		</ul>
	</div>
</div>
<!-- //short-->
<h2>Manager Feedback</h2>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Special title treatment</h5>
					<c:forEach var="repo" items="workReport">
						<div class="col-lg-6">
							<div class="card">
								<div class="card-header">Featured</div>
								<div class="card-body">
									<h5 class="card-title">Special title treatment</h5>
									
								</div>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>