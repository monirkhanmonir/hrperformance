<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="inner_page-banner one-img"></div>
<!-- short -->
<div class="using-border py-3">
	<div class="inner_breadcrumb  ml-4">
		<ul class="short_ls">
			<li><a href="index.html">Home</a> <span>/ /</span></li>
			<li>Contact</li>
		</ul>
	</div>
</div>
<!-- //short-->

<div class="container" ng-app="myApp" ng-controller	="myCtrl">
	<div class="row">
	<h2> Employee Report </h2>
		<button class="btn btn-success" ng-click="showPerformanceReport()">Click me</button>
	</div>
</div>





<jsp:include page="footer.jsp"></jsp:include>