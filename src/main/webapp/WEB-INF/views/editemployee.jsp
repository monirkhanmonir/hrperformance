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
<form action="/employee/employeeRegister" method="post">
	<div class="row wls-contact-mid">
		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<input type="text" class="form-control" placeholder="Employee Name"
				required="" name="empName" value="${employeeEdit.empName}">
		</div>
		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<input type="email" class="form-control" placeholder="Employee Email"
				required="" name="empEmail" value="${employeeEdit.empEmail}">
		</div>
	</div>

	<div class="row wls-contact-mid">
		<div class="col-md-6 col-sm-6 ">
			<span>Gender:</span> <input type="radio" value="Male" name="gender">Male
			<input type="radio" value="Female" name="gender">Female <input
				type="radio" value="Other" name="gender">Other
		</div>
		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<select class="form-control" name="jobTitle"
				value="${employeeEdit.jobTitle}">
				<option>Select job title</option>
				<option value="Manager">Manager</option>
				<option value="Area Manager">Area Manager</option>
				<option value="Seals Representative">Seals Representative</option>
			</select>
		</div>
	</div>

	<div class="row agile-wls-contact-mid">

		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<span>Date Of Birth</span> <input type="date" class="form-control"
				placeholder="Date Of Birth" required="" name="birthDate"
				value="${employeeEdit.birthDate}">
		</div>
		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<span>join Date</span> <input type="date" class="form-control"
				placeholder="Join Date" required="" name="joinDate"
				value="${employeeEdit.joinDate}">
		</div>
	</div>

	<div class="row agile-wls-contact-mid">

		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<input type="password" class="form-control" placeholder="Password"
				required="" name="password" value="${employeeEdit.password}" />
		</div>
		<div class="col-md-6 col-sm-6 form-group contact-forms">
			<input type="password" class="form-control" placeholder="Repassword"
				required="" name="repassword" value="${employeeEdit.repassword}" />
		</div>
	</div>

	<div class="form-group ">
		<textarea class="form-control" placeholder="Address..." required=""
			name="address" value="${employeeEdit.address}"></textarea>
	</div>
	<button type="submit" class="btn btn-primary">Save</button>

</form>
<jsp:include page="footer.jsp"></jsp:include>
