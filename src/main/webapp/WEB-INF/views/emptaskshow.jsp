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
<h2>employee Task Show Page</h2>
 
<table class="table">
	<tr>
		<th>Task Id</th>
		<th>Emp Id</th>
		<th>Task Name</th>
		<th>Task Unit</th>
		<th>Assign Name</th>
		<th>Issue Date</th>
		<th>Restriction Date</th>
		<th>Issue Status</th>
		<th>Issue Priority</th>
		<th>Remark</th>	
	</tr>
	
	<c:forEach var="task" items="${emptask}">
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
			<td>${task.ramark}</td>	
		</tr>
	</c:forEach> 
</table> 



<
<!-- <table class="table">
	<thead>
		<tr>
			<th>Column 1 Heading</th>
			<th>Column 2 Heading</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>Task Id</th>
			<td></td>
		</tr>
		<tr>
			<th>Emp Id</th>
			<td></td>
		</tr>
		<tr>
			<th>Task Name</th>
			<td></td>
		</tr>
		<tr>
			<th>Task Unit</th>
			<td></td>
		</tr>
		<tr>
			<th>Assign Name</th>
			<td></td>
		</tr>
		<tr>
			<th>Issue Date</th>
			<td></td>
		</tr>
		<tr>
			<th>Restriction Date</th>
			<td></td>
		</tr>
		<tr>
			<th>Issue Status</th>
			<td></td>
		</tr>
		<tr>
			<th>Issue Priority</th>
			<td></td>
		</tr>
		<tr>
			<th>Remark</th>
			<td></td>
		</tr>
	</tbody>

</table>

 -->



<jsp:include page="footer.jsp"></jsp:include>