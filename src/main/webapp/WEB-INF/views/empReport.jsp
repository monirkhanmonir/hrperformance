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

<div ng-app="myApp" ng-controller="myCtrl">

	<section>
		<div class=" py-lg-5 py-md-4 py-sm-4 py-3">
			<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Employee
				Performance rating</h3>
			<div class="row">
				<div class="col-lg-12 col-md-12 ">
					<div class="info-para">
						<!--contact-map -->
						<!-- Default form register -->


						<div class="card">
							<div class="card-header">Employee Report</div>
							<div class="card-body">
								<div class="row">
									<div class="col-lg-4 col-md-4">
									
									<form action="/performance/byId" method="post">									
									<div class="form-group row">
											<label  class="col-sm-5 col-form-label">Print By Id: </label>
											<div class="col-sm-7">
												<input type="number" min="0" max="10"
											step="1"  class="form-control" name="id">
											<input type="submit" value="Show PDF" class="btn btn-info"/> 
											</div>
										</div>
									</form>
									
									
										<div class="form-group row">
											<label for="staticEmail" class="col-sm-5 col-form-label">Roles to display: </label>
											<div class="col-sm-7">
												<input type="number" min="0" max="10"
											step="1" ng-model="rowLimit" class="form-control">
											</div>
										</div>								
									</div>
									
									<div class="offset-md-4 col-lg-4 col-md-4">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Search: </label>
											<div class="col-sm-9">
												<input type="text" 
											 ng-model="search.empName" class="form-control" placeholder="Search By name">
											</div>
										</div>								
									</div>
								</div>

								<table class="table text-center table-striped table-bordered ">
									<thead class="table-head thead-dark">
										<tr>
											<th>Serial No</th>
											<th>Employee Id</th>
											<th ng-click="sortData('name')">Name <span
												ng-class="gateSortClass('name')"></span>
											</th>
											<th>Job Title</th>
											<th ng-click="sortData('attendance')">Attendance <span
												ng-class="gateSortClass('attendance')"></span>
											</th>
											<th ng-click="sortData('CommunicationSkills')">Communication
												Skills <span ng-class="gateSortClass('CommunicationSkills')"></span>
											</th>
											<th ng-click="sortData('dependability')">Dependability <span
												ng-class="gateSortClass('dependability')"></span>
											</th>
											<th ng-click="sortData('JobKnowledge')">Job Knowledge <span
												ng-class="gateSortClass('JobKnowledge')"></span>
											</th>
											<th ng-click="sortData('Productivity')">Productivity <span
												ng-class="gateSortClass('Productivity')"></span>
											</th>
											<th ng-click="sortData('WorkQuality')">Work Quality <span
												ng-class="gateSortClass('WorkQuality')"></span>
											</th>
											<th ng-click="sortData('OverallRating')">Overall Rating
												<span ng-class="gateSortClass('OverallRating')"></span>
											</th>
										</tr>
									</thead>
									<tbody class="table-hover">
										<tr
											ng-repeat="rating in ratingList | orderBy:sortColmn:reverseSort |limitTo:rowLimit|filter:search">
											<td>{{$index+1}}</td>
											<td>{{rating.empId}}</td>
											<td>Employee Name</td>
											<td>Job Title</td>
											<td>{{rating.attendance}}</td>
											<td>{{rating.communicationSkills}}</td>
											<td>{{rating.dependability}}</td>
											<td>{{rating.jobKnowledge}}</td>
											<td>{{rating.productivity}}</td>
											<td>{{rating.workquality}}</td>
											<td>{{rating.overallRating}}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- Default form register -->
					</div>
				</div>
			</div>

		</div>
	</section>
</div>
<jsp:include page="footer.jsp"></jsp:include>