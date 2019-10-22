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
<section>
	<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Employee
			Report Form</h3>
		<div class="row">
			<div class="col-lg-12 col-md-12 ">
				<div class="info-para">
					<!--contact-map -->
					<!-- Default form register -->


					<div class="card" ng-app="myApp" ng-controller="myCtrl">
						<div class="card-header">Featured {{msg}}</div>
						<div class="card-body">
							<button class="btn" ng-click="getTask()">Test</button>
							<form>
								<div class="alert alert-primary" role="alert">
									<p>Employee task Feedback Information</p>
								</div>
								<table class="table table-bordered table-sm">
									<tr>
										<th><b>Task Id: </b></th>
										<td><input type="text" class="form-control"></td>
										<th><b>Task Name:</b></th>
										<td><input type="int" class="form-control"></td>
									</tr>
									<tr>
										<th><b>Job Title: </b></th>
										<td></td>
										<th><b>Date:</b></th>
										<td></td>
									</tr>
									<tr>
										<th><b>Department: </b></th>
										<td></td>
										<th><b>Manager:</b></th>
										<td></td>
									</tr>
									<tr>
										<th><b>Review Periode: </b></th>
										<td></td>
										<th><b>Date:</b></th>
										<td></td>
									</tr>

								</table>

								<div class="alert alert-primary" role="alert">
									<h5>Employee Performance Ratings</h5>
								</div>
								<table class="table table-bordered text-center">
									<thead class="thead-light">
										<tr>
											<th colspan="5">&nbsp;</th>
											<th>1 = Poor</th>
											<th>2 = Fair</th>
											<th>3 = Satisfactory</th>
											<th>4 = Good</th>
											<th>5 = Excellent</th>
										</tr>
									</thead>
									<tbody>

										<tr>
											<th colspan="5">Job Knowledge</th>
											<td><input type="radio" value="1" name="jobKnowledge"
												ng-model="jobKnowledge"></td>
											<td><input type="radio" value="2" name="jobKnowledge"
												ng-model="jobKnowledge"></td>
											<td><input type="radio" value="3" name="jobKnowledge"
												ng-model="jobKnowledge"></td>
											<td><input type="radio" value="4" name="jobKnowledge"
												ng-model="jobKnowledge"></td>
											<td><input type="radio" value="5" name="jobKnowledge"
												ng-model="jobKnowledge"></td>
										</tr>
										<tr>
											<th colspan="5">Comment:</th>
											<td colspan="5"><input type="text" class="form-control" ng-model="comment">{{jobKnowledge}}</td>
										</tr>
										<tr>
											<th colspan="5">Work Quality</th>
											<td><input type="radio" value="1" name="workquality"
												ng-model="workquality"></td>
											<td><input type="radio" value="2" name="workquality"
												ng-model="workquality"></td>
											<td><input type="radio" value="3" name="workquality"
												ng-model="workquality"></td>
											<td><input type="radio" value="4" name="workquality"
												ng-model="workquality"></td>
											<td><input type="radio" value="5" name="workquality"
												ng-model="workquality"></td>
										</tr>
										<tr>
											<th colspan="5">Comment:</th>
											<td colspan="5"><input type="text" class="form-control"></td>
										</tr>
										<tr>
											<th colspan="5">Attendance/Punctuality</th>
											<td><input type="radio" value="1" name="attendance"
												ng-model="attendance"></td>
											<td><input type="radio" value="2" name="attendance"
												ng-model="attendance"></td>
											<td><input type="radio" value="3" name="attendance"
												ng-model="attendance"></td>
											<td><input type="radio" value="4" name="attendance"
												ng-model="attendance"></td>
											<td><input type="radio" value="5" name="attendance"
												ng-model="attendance"></td>
										</tr>
										<tr>
											<th colspan="5">Comment:</th>
											<td colspan="5"><input type="text" class="form-control"></td>
										</tr>
										<tr>
											<th colspan="5">Productivity</th>
											<td><input type="radio" value="1" name="productivity"
												ng-model="productivity"></td>
											<td><input type="radio" value="2" name="productivity"
												ng-model="productivity"></td>
											<td><input type="radio" value="3" name="productivity"
												ng-model="productivity"></td>
											<td><input type="radio" value="4" name="productivity"
												ng-model="productivity"></td>
											<td><input type="radio" value="5" name="productivity"
												ng-model="productivity"></td>
										</tr>
										<tr>
											<th colspan="5">Comment:</th>
											<td colspan="5"><input type="text" class="form-control"></td>
										</tr>
										<tr>
											<th colspan="5">Communication/Listening Skills</th>
											<td><input type="radio" value="1"
												name="communicationSkills" ng-model="communicationSkills"></td>
											<td><input type="radio" value="2"
												name="communicationSkills" ng-model="communicationSkills"></td>
											<td><input type="radio" value="3"
												name="communicationSkills" ng-model="communicationSkills"></td>
											<td><input type="radio" value="4"
												name="communicationSkills" ng-model="communicationSkills"></td>
											<td><input type="radio" value="5"
												name="communicationSkills" ng-model="communicationSkills"></td>
										</tr>
										<tr>
											<th colspan="5">Comment:</th>
											<td colspan="5"><input type="text" class="form-control"></td>
										</tr>
										<tr>
											<th colspan="5">Dependability</th>
											<td><input type="radio" value="1" name="dependability"
												ng-model="dependability"></td>
											<td><input type="radio" value="2" name="dependability"
												ng-model="dependability"></td>
											<td><input type="radio" value="3" name="dependability"
												ng-model="dependability"></td>
											<td><input type="radio" value="4" name="dependability"
												ng-model="dependability"></td>
											<td><input type="radio" value="5" name="dependability"
												ng-model="dependability"></td>
										</tr>
										<tr>
											<th colspan="5">Comment:</th>
											<td colspan="5"><input type="text" class="form-control"></td>
										</tr>
										<tr>
											<th colspan="5" class="font-weight-bold text-primary">Overall
												Rating:</th>
											<td colspan="5"><input type="text" class="form-control"
												readonly="readonly" >{{overallRating}}</td>
										</tr>
									</tbody>
								</table>
								<div class="alert-primary" role="alert">
									<h3>Evaluation</h3>
								</div>
								<div class="form-group">
									<label>ADDITIONAL COMMENTS</label>
									<textarea rows="" cols="" class="form-control"></textarea>
								</div>

								<button type="submit" class="btn btn-primary">Submit</button>
							</form>


						</div>
					</div>















					<!-- Default form register -->
				</div>
			</div>
		</div>

	</div>
</section>


<jsp:include page="footer.jsp"></jsp:include>