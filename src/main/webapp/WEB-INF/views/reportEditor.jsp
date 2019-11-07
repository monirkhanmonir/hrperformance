<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="employeeHeader.jsp"></jsp:include>
<div class="inner_page-banner one-img"></div>
<!-- short -->
<div class="using-border py-3">
	<div class="inner_breadcrumb  ml-4">
		<ul class="short_ls">
			<li><a href="index.html">Employee</a> <span>/ /</span></li>
			<li>Report</li>
		</ul>
	</div>
</div>
<!-- //short-->

<section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Employee
			Report Form</h3>
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="info-para">
					<!--contact-map -->
					<form action="<c:url value='/performance/workReport/${pageContext.request.remoteUser}'/>" method="post" >
						<div class="row wls-contact-mid">
							<div class="col-md-6 col-sm-6 form-group contact-forms">
								<select class="form-control w3-select w3-border" name="repoDuration">
									<option value="" disabled selected>Choose Report Duration</option>
									<option value="Monthly">Monthly</option>
									<option value="Quarterly">Quarterly</option>
									<option value="Half Yearly">Half Yearly</option>
									<option value="Yearly">Yearly</option>
								</select>
							</div>
							<div class="col-md-6 col-sm-6 form-group contact-forms">
								<input type="date" class="form-control" placeholder="Last Name"
									required="" name="reopDate">
							</div>
						</div>
						<div class="row agile-wls-contact-mid">
							<div class="col-md-6 col-sm-6 form-group contact-forms">
								<input type="text" class="form-control" placeholder="Phone"
									required="">
							</div>
							<div class="col-md-6 col-sm-6 form-group contact-forms">
								<input type="email" class="form-control" placeholder="Email"
									required="">
							</div>
						</div>
						<div class="form-group contact-forms">						
						 <textarea class="form-control workEditor"
								required="" name="workReport"></textarea>
						</div>
						<div class="text-left click-subscribe">
							<button type="submit" class="btn btn-block click-me">Send</button>
						</div>
					</form>
				</div>
			</div>

		</div>

	</div>
</section>







<jsp:include page="footer.jsp"></jsp:include>