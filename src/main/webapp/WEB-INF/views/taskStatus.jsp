<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="managerHeader.jsp"></jsp:include>
<div class="inner_page-banner one-img"></div>
<!-- short -->
<div class="using-border py-3">
	<div class="inner_breadcrumb  ml-4">
		<ul class="short_ls">
			<li><a href="index.html">Home</a> <span>/ /</span></li>
			<li>Task Status</li>
		</ul>
	</div>
</div>
<!-- //short-->
<table class="table table-bordered table-sm" ng-app="myApp" ng-controller="myCtrl">
	<tr>

		<th><b>Task Name:</b></th>
		<td><select class="form-control" name="taskId" ng-model="taskId"
			ng-change="showTask()">
				<c:forEach var="task" items="${taskEntity}">
					<option value="${task.taskId}">${task.taskName}</option>
				</c:forEach>
		</select></td>
		<th><b>Task Id: </b></th>
		<td>{{task.taskId}}</td>
	</tr>
	<tr>
		<th><b>Assign Name: </b></th>
		<td>{{task.assignName}}</td>
		<th><b>Finish Date:</b></th>
		<td></td>
	</tr>
	<tr>
		<th><b>empId: </b></th>
		<td>{{task.empId}}</td>
		<th><b>Issue Date:</b></th>
		<td>{{task.issueDate}}</td>
	</tr>
	<tr>
		<th><b>Issue Priority: </b></th>
		<td>{{task.issuePriority}}</td>
		<th><b>Issue Status:</b></th>
		<td>{{task.issueStatus}}</td>
	</tr>
	<tr>
		<th><b>Ramark: </b></th>
		<td>{{task.ramark}}</td>
		<th><b>Restriction Date:</b></th>
		<td>{{task.restrictionDate}}</td>
	</tr>
	<tr>
		<th><b>Task Id: </b></th>
		<td>{{task.taskId}}</td>
		<th><b>Task Name:</b></th>
		<td>{{task.taskName}}</td>
	</tr>
	<tr>
		<th><b>Task Unit: </b></th>
		<td>{{task.taskUnit}}</td>
		<th><b>Change:</b></th>
		<td>{{task.empId}}</td>
	</tr>

</table>
<jsp:include page="footer.jsp"></jsp:include>