<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Hr Performance Management ${pageContext.request.remoteUser}</title>
<!--meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Job-point Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!--//meta tags ends here-->
<!--booststrap-->
<link href="<c:url value="/assets/css/bootstrap.min.css"/>" rel="stylesheet"
	type="text/css" media="all"/>
<!--//booststrap end-->
<!-- font-awesome icons -->

<!-- //font-awesome icons -->
<!--stylesheets-->
<link href="<c:url value="/assets/css/style.css"/>" rel='stylesheet' type='text/css'
	media="all"/>
	

	
	
<!--//stylesheets-->

<script src="<c:url value="/assets/js/angular.min.js"/>"></script>








<%-- <script src="<c:url value="/assets/js/tinymce.min.js"/>"></script>

<script>tinymce.init({selector:'textarea'});</script> --%>









<style type="text/css">
.arrow-down {
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 10px solid red;
}

.arrow-up {
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-top: 10px solid red;
}
</style>
</head>
<body>
	<div class="header-outs" id="header">
		<!--banner -->
		<div class="header-w3layouts">
			<!--//navigation section -->
			<nav class="navbar navbar-expand-lg"
				style="background-color: rgba(0, 0, 0, 0.2)">
				<div class="hedder-up">
					<h1>
						<a class="navbar-brand" href="<c:url value="/employee/employeeHome"/>">HR Performance</a>
					</h1>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarSupportedContent">
					<ul class="navbar-nav ">
						<li class="nav-item active"><a class="nav-link" href="<c:url value='/employee/employeeHome'/>">Home
								<span class="sr-only">(current)</span>
						</a></li>
						 <li class="nav-item"><a href="<c:url value='/user/employeeProfile/${pageContext.request.remoteUser}'/>" class="nav-link ">Profile</a>
						</li>
						
						 <li class="nav-item"><a href="<c:url value='/employee/taskissue/${pageContext.request.remoteUser}'/>" class="nav-link ">Task</a>
					
						</li>
						 <li class="nav-item"><a href="<c:url value="/employee/empreportEditor"/>" class="nav-link ">Report</a>
						</li>
						 <li class="nav-item"><a href="<c:url value="/performance/feedback/${pageContext.request.remoteUser}"/>" class="nav-link ">Feedback</a>
						</li>


						
						<!-- <li class="nav-item"><a href="/contactus" class="nav-link">Contact</a>
						</li> -->
						<li class="nav-button">
							<button type="button" class="btn login-hedder"
								data-toggle="modal" data-target="#exampleModalCenter">
								Login</button>
						</li>
					</ul>
					<div class="both-butns">
						<ul>
							<li>
								<button type="button" class="register-hedder"
									data-toggle="modal" data-target="#exampleModalCenter2">
									Register</button>
							</li>
							<li>
								<div class="contact-hedder">
									<a href="<c:url value='/logout'/>"> Log Out</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!--//navigation section -->
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //Navigation -->