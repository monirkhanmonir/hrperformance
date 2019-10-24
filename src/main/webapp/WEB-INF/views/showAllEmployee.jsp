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
			<li>Employee</li>
		</ul>
	</div>
</div>
<!-- //short-->

<div ng-app="myApp" ng-controller="myCtrl">
	<h2>{{msg}}</h2>
	<div class="flote-right">
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-success" data-toggle="modal"
			data-target="#exampleModal">Add New</button>
	</div>



	<table class="table table-hover">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Date of Birth</th>
			<th>Join Date</th>
			<th>Gender</th>
			<th>Job Title</th>
			<th>Password</th>
			<th>Address</th>
			<th>Expreance</th>
			<th>Action</th>
		</tr>
		<c:forEach var="employee" items="${employeeList}">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.empName}</td>
				<td>${employee.empEmail}</td>
				<td>${employee.gender}</td>
				<td>${employee.jobTitle}</td>
				<td>${employee.birthDate}</td>
				<td>${employee.joinDate}</td>
				<td>${employee.password}</td>
				<td>${employee.repassword}</td>
				<td>${employee.address}</td>


				<td>
					<!-- <button class="btn btn-success" data-toggle="modal"
						data-target="#exampleModal" >
						<i class="fa fa-edit"></i>
					</button> --> <a href="/employee/editemp/${employee.id}"
					class="btn btn-primary"><i class="fa fa-edit"></i></a>
					<button class="btn btn-danger">Delete</button>
				</td>
			</tr>
		</c:forEach>

	</table>


	<!-- Add New Modal Row Section  start-->
	<div class="addmodal">


		<!-- Modal -->
		<div class="modal fade bd-example-modal-lg" id="exampleModal"
			tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Employee
							Registration From</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="/employee/employeeRegister" method="post">
							<div class="row wls-contact-mid">
								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<input type="text" class="form-control"
										placeholder="Employee Name" required="" name="empName">
								</div>
								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<input type="email" class="form-control"
										placeholder="Employee Email" required="" name="empEmail">
								</div>
							</div>

							<div class="row agile-wls-contact-mid">
								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<span>Date Of Birth</span> <input type="date"
										class="form-control" placeholder="Date Of Birth" required=""
										name="birthDate">
								</div>
								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<span>join Date</span> <input type="date" class="form-control"
										placeholder="Join Date" required="" name="joinDate">
								</div>
							</div>

							<div class="row wls-contact-mid">
								<div class="col-md-6 col-sm-6 ">
									<span>Gender:</span> <input type="radio" value="Male"
										name="gender">Male <input type="radio" value="Female"
										name="gender">Female <input type="radio" value="Other"
										name="gender">Other
								</div>
								<div class="col-md-6 col-sm-6 ">
									<span>Role:</span> <input type="radio" value="Admin"
										name="role">Admin <input type="radio" value="HR"
										name="role">HR <input type="radio" value="Employee"
										name="role">Employee
								</div>

							</div>


							<div class="row agile-wls-contact-mid">

								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<input type="text" class="form-control" placeholder="User Name"
										required="" name="username">
								</div>
								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<select class="form-control" name="jobTitle">
										<option>Select job title</option>
										<option value="Manager">Manager</option>
										<option value="Area Manager">Area Manager</option>
										<option value="Seals Representative">Seals
											Representative</option>
									</select>
								</div>
							</div>

							<div class="row agile-wls-contact-mid">

								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<input type="password" class="form-control"
										placeholder="Password" required="" name="password" />
								</div>
								<div class="col-md-6 col-sm-6 form-group contact-forms">
									<input type="password" class="form-control"
										placeholder="Repassword" required="" name="repassword" />
								</div>
							</div>

							<div class="form-group ">
								<textarea class="form-control" placeholder="Address..."
									required="" name="address"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Save</button>

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>

					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<jsp:include page="footer.jsp"></jsp:include>