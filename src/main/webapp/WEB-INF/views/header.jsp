<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Job-point a Human Resource Category Bootstrap Responsive
	Web Template | Home :: w3layouts</title>
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
<%-- <link href="<c:url value="assets/css/font-awesome.css"/>" rel="stylesheet"/> --%>
<!-- //font-awesome icons -->
<!--stylesheets-->
<link href="<c:url value="/assets/css/style.css"/>" rel='stylesheet' type='text/css'
	media="all"/>
	

	
	
<!--//stylesheets-->

<script src="<c:url value="/assets/js/angular.min.js"/>"></script>

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
						<a class="navbar-brand" href="<c:url value="/"/>">HR Performance</a>
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
						<li class="nav-item active"><a class="nav-link" href="<c:url value="/"/>">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a href="<c:url value="/user/adminProfile/${pageContext.request.remoteUser}"/>" class="nav-link ">Profile</a>
						</li>
						<!-- <li class="nav-item"><a href="<c:url value='/employee/report'/>" class="nav-link ">E-Report</a>
						</li> -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Report </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
								<a href="<c:url value='/performance/reportpage'/>" class="nav-link">Performance
									Report</a> <a href="<c:url value='/payment'/>" class="nav-link">Payment</a> 
							</div></li>


						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Record </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="nav-link " href="<c:url value='/employee/showAllEmployee'/>">All
									Employee</a>
                                    
									 <a href="<c:url value='/task/status'/>" class="nav-link">Task Status</a>
							</div></li>
						<%-- <li class="nav-item"><a href="<c:url value='/contactus'/>" class="nav-link">Contact</a> --%>
						</li>
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