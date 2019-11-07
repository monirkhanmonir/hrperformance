<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="employeeHeader.jsp"></jsp:include>
<div class="inner_page-banner one-img"></div>
<!-- short -->
<div class="using-border py-3">
	<div class="inner_breadcrumb  ml-4">
		<ul class="short_ls">
			<li><a href="index.html">Home</a> <span>/ /</span></li>
			<li>Employee//Feedback</li>
		</ul>
	</div>
</div>
<!-- //short-->
<h2>Manager Feedback</h2>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">Featured</div>
				<div class="card-body">
					
					<c:forEach var="repo" items="${empWorkReport}">

						<div class="col-md-12">
							<div class="card">
								<div class="card-header">Monthly Feedback:
									${repo.ratingDate}</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-5">
											<h5 class="card-title bg-primary text-light">Simple
												Personal Information</h5>
											<table class="table table-bordered">
												<thead class=" table-dark">
													<tr>
														<th><h5>Title</h5></th>
														<th><h5>Information</h5></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th><b>Employee Id:</b></th>
														<td><b>${repo.empId}</b></td>
													</tr>
													<tr>
														<th><b>Employee name:</b></th>
														<td><b>${repo.empName}</b></td>
													</tr>
													<tr>
														<th><b>Job title:</b></th>
														<td><b>${repo.jobTitle}</b></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="col-md-7">
											<h5 class="card-title bg-info text-light">Performance
												information (Total Score: &nbsp; <span class="badge badge-warning"><b>${repo.overallRating}</b></span>)</h5>
											<table class="table table-bordered col-md-7">
												<thead class="table-dark">
													<tr>
														<th><h5>Topic</h5></th>
														<th><h5>Position</h5></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th><b>Job Knowledge</b></th>
														<th><h6>${repo.jobKnowledgeCmnt}&nbsp; <span class="badge badge-secondary"><b>${repo.jobKnowledge}</b></span></h6></th>
													</tr>
													<tr>
														<th><b>Work Quality</b></th>
														<th><h6>${repo.workqualityCmnt}&nbsp; <span class="badge badge-secondary"><b>${repo.workquality}</b></span></h6></th>
													</tr>
													<tr>
														<th><b>Attendance</b></th>
														<th><h6>${repo.attendanceCmnt}&nbsp; <span class="badge badge-secondary"><b>${repo.attendance}</b></span></h6></th>
													</tr>
													<tr>
														<th><b>Productivity</b></th>
														<th><h6>${repo.productivityCmnt}&nbsp; <span class="badge badge-secondary"><b>${repo.productivity}</b></span></h6></th>
													</tr>
													<tr>
														<th><b>Communication Skills</b></th>
														<th><h6>${repo.communicationSkillsCmnt}&nbsp; <span class="badge badge-secondary"><b>${repo.communicationSkills}</b></span></h6></th>
													</tr>
													<tr>
														<th><b>Dependability</b></th>
														<th><h6>${repo.dependabilityCmnt}&nbsp; <span class="badge badge-secondary"><b>${repo.dependability}</b></span></h6></th>
													</tr>
													<tr>
														<th><b>Additional Comment</b></th>
														<th><h6>${repo.additionalCmnt}&nbsp; </th>
													</tr>
													
												</tbody>
											</table>
										</div>
									</div>


								</div>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>