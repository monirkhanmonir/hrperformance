<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<h2>Show All Issue Task</h2>

<table class="table">
	<tr>
		<th>Task Id</th>
		<th>Employee Id</th>
		<th>Task Name</th>
		<th>Task Unit</th>
		<th>Assign Name</th>
		<th>Issue Date</th>
		<th>Restriction Date</th>
		<th>Issue Status</th>
		<th>Priority</th>
		<th>Remark</th>
	</tr>
	<c:forEach var="task" items="${taskEntity}">
		<tr>
			<td>${task.taskId}</td>
			<td>${task.empId}</td>
			<td>${task.taskName}</td>
			<td>${task.taskUnit}</td>
			<td>${task.assignName}</td>
			<td>${task.issueDate}</td>
			<td>${task.restrictionDate}</td>
			<td>${task.issueStatus}</td>
			<td>${task.issuePriority}</td>
		
		</tr>


	</c:forEach>

</table>

<jsp:include page="footer.jsp"></jsp:include>