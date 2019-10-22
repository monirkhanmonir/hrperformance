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
<div class="container">
	<h2>employee Task Show Page</h2>
	<c:forEach var="task" items="${emptask}">

		<div class="card">
			<div class="card-header">${task.taskName}</div>
			<div class="card-body">
				<h5 class="card-title">Employee task</h5>
				<table class="table">
					<tr>
						<th>Task Id</th>
						<td>${task.taskId}</td>
						<th>Task Name</th>
						<td>${task.taskName}</td>
						<th>Assign Name</th>
						<td>${task.assignName}</td>
					</tr>
					<tr>

						<th>Task Unit</th>
						<td>${task.taskUnit}</td>
						<th>Issue Date</th>
						<td>${task.issueDate}</td>
						<th>Restriction Date</th>
						<td>${task.restrictionDate}</td>
					</tr>
					<tr>
						<th>Issue Status</th>
						<td>${task.issueStatus}</td>
						<th>Issue Priority</th>
						<td>${task.issuePriority}</td>
						<th>Remark</th>
						<td>${task.ramark}</td>
					</tr>
				</table>

				<form action="/employee/taskDone" method="post">
					<table class="table">
						<tr>
						<input type="text" value="${task.taskId}" readonly="readonly" name="taskId"/>
							<th>Finish Date:</th>
							<td><input type="date" name="finishDate"
								class="form-control" /></td>
							<td><input type="submit" value="Done" class="btn btn-success"/></td>
						</tr>
					</table>
				</form>


			</div>
		</div>
		<br>
		<br>

	</c:forEach>
</div>


<jsp:include page="footer.jsp"></jsp:include>