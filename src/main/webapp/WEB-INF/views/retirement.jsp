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
			<div class="col-lg-8 col-md-8 offset-md-2 offset-lg-2">
				<div class="info-para">
					<!--contact-map -->
					<!-- Default form register -->
					<form>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail4">Id</label> <input type="text"
									class="form-control" id="inputEmail4">
							</div>
							<div class="form-group col-md-6">
								<label for="inputPassword4">Name:</label> <input type="text"
									class="form-control" id="inputPassword4">
							</div>
						</div>



						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Department: </label> <select class="form-control">
									<option>Select Department</option>
									<option value="Marketting">Marketting</option>
									<option value="Sales">Sales</option>
									<option value="parches">parches</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Job Title: </label> <select class="form-control">
									<option>Select Job Title</option>
									<option value="Marketting">Marketting</option>
									<option value="Sales">Sales</option>
									<option value="parches">parches</option>
								</select>
							</div>
						</div>


						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Target Date: </label> <input type="date"
									class="form-control">
							</div>
							<div class="form-group col-md-6">
								<label>Target End Score:</label> <input type="number"
									class="form-control">
							</div>
						</div>


						<div class="form-group">
							<label for="inputAddress">Remark:</label>
							<textarea rows="" cols="" class="form-control"></textarea>
						</div>



						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
					<!-- Default form register -->
				</div>
			</div>
		</div>

	</div>
</section>


<jsp:include page="footer.jsp"></jsp:include>