<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="managerHeader.jsp"></jsp:include>
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
<section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Contact
			Us</h3>
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<div class="info-para">
					<!--contact-map -->
					<form action="#" method="post">
						<div class="row wls-contact-mid">
							<div class="col-md-6 col-sm-6 form-group contact-forms">
								<input type="text" class="form-control" placeholder="Fist Name"
									required="">
							</div>
							<div class="col-md-6 col-sm-6 form-group contact-forms">
								<input type="text" class="form-control" placeholder="Last Name"
									required="">
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
							<textarea class="form-control" rows="3" placeholder="Message.."
								required=""></textarea>
						</div>
						<div class="text-left click-subscribe">
							<button type="submit" class="btn btn-block click-me">Send</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 contact-right ">
				<div
					class="mb-lg-5 mb-md-4 mb-sm-3 mb-3 footer_grid_left text-center">
					<div class="contact_footer_grid_left text-center mb-3">
						<span class="fa fa-map-marker"></span>
					</div>
					<p>Dhaka Cantonment, Dhaka 1206</p>
				</div>
				<div
					class="mb-lg-5 mb-md-4 mb-sm-3 mb-3 footer_grid_left text-center">
					<div class="contact_footer_grid_left text-center mb-3">
						<span class="fa fa-phone"></span>
					</div>
					<p>
						019312540115<br>
					</p>
				</div>
				<div class="footer_grid_left text-center">
					<div class="contact_footer_grid_left text-center mb-3">
						<span class="fa fa-envelope"></span>
					</div>
					<p>
						<a href="mailto:monirkhanmonir502@gmail.com">monirkhanmonir502@gmail.com</a>
						<br>

					</p>
				</div>
			</div>
		</div>

	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>