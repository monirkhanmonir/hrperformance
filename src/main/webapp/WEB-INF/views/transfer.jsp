<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="inner_page-banner one-img"></div>
<!-- short -->
<div class="using-border py-3">
	<div class="inner_breadcrumb  ml-4">
		<ul class="short_ls">
			<li><a href="index.html">Home</a> <span>/ /</span></li>
			<li>Task Issue</li>
		</ul>
	</div>
</div>
<!-- //short-->

<section>
	<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Task
			Issue From</h3>
		<div class="row">
			<div class="col-lg-8 col-md-8 offset-md-2 offset-lg-2">
				<div class="info-para">
					<!--contact-map -->
					<!-- Default form register -->
					<form action="/employee/taskissue" method="post">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail4">Task Id:</label> <input type="text"
									class="form-control" id="inputEmail4" name="taskId">
							</div>
							<div class="form-group col-md-6">
								<label for="inputEmail4">Employee Id:</label> <input
									type="number" class="form-control" id="inputEmail4"
									name="empId">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail4">Task Name:</label> <input type="text"
									class="form-control" id="inputEmail4" name="taskName">
							</div>
							<div class="form-group col-md-6">
								<label for="inputEmail4">Task Unit:</label> <input
									type="number" class="form-control" id="inputEmail4"
									name="taskUnit">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputEmail4">Assign Name:</label> <select
									class="form-control" name="assignName">
									<option>Select One</option>
									<option value="Manager">Manager</option>
									<option value="Hr">HR</option>
									<option value="Manager">Manager</option>
								</select>
							</div>							
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Issue Date: </label> <input type="date"
									class="form-control" name="issueDate">
							</div>
							<div class="form-group col-md-6">
								<label>Restriction Date: </label> <input type="date"
									class="form-control" name="restrictionDate">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Issue Status: </label> <select class="form-control"
									name="issueStatus">
									<option>Select Status</option>
									<option value="Begin">On going</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Priority: </label> <select class="form-control"
									name="issuePriority">
									<option>Select One</option>
									<option value="Urgent">Urgent</option>
									<option value="Normal">Normal</option>
									<option value="Optional">Optional</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="inputAddress">Remark:</label>
							<textarea rows="" cols="" class="form-control" name="ramark"></textarea>
						</div>



						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
					<!-- Default form register -->
				</div>
			</div>
		</div>

	</div>
</section>
<!--//contact  -->

<jsp:include page="footer.jsp"></jsp:include>