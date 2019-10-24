<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--footer-->
<footer class="buttom-footer py-lg-5 py-md-4 py-sm-3 py-3">
	<div class="container-fluid py-3">
		<h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Newsletter</h3>
		<!--subscribe-->
		<div class="mb-lg-5 mb-md-4 mb-3 sub-wthree-form">
			<form>
				<div class="form-group email-sub-w3layouts">
					<input type="email" class="form-control email-sub-w3layouts"
						placeholder="Email" required="">
				</div>
				<div class="pt-sm-3 pt-2 text-center">
					<button type="submit" class="btn subscrib-btnn">Subscribe</button>
				</div>
			</form>
		</div>
		<!--//subscribe-->
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<div class="headder-logo-icon text-center">
					<h2>
						<a href="index.html">Job-point</a>
					</h2>
				</div>
				<div class="footer-bottom py-lg-4 py-md-3 py-2 text-center">
					<p>
						©2018 job-point. All Rights Reserved | Design by <a
							href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
					</p>
				</div>
			</div>
			<div class="col-lg-5 col-md-5">
				<div class="buttom-nav py-2">
					<nav class="border-line">
						<ul class="nav justify-content-center">
							<li class="nav-item active"><a class="nav-link"
								href="index.html">Home <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item"><a href="about.html" class="nav-link ">About</a>
							</li>
							<li class="nav-item"><a href="service.html" class="nav-link">Services</a>
							</li>
							<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a>
							</li>
						</ul>
					</nav>
				</div>
				<div class="icons text-center">
					<ul>
						<li><a href="#"><span class="fa fa-facebook"></span></a></li>
						<li><a href="#"><span class="fa fa-twitter"></span></a></li>
						<li><a href="#"><span class="fa fa-rss"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>
<!--//footer-->
<!--/Login-->
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header text-center">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="login px-4 py-4 mx-auto mw-100">
					<h5 class="text-center mb-4">Login Now</h5>
					<form action="#" method="post">
						<div class="form-group">
							<p class="mb-2">Email address</p>
							<input type="email" class="form-control" id="exampleInputEmail1"
								placeholder="" required="">
						</div>
						<div class="form-group">
							<p class="mb-2">Password</p>
							<input type="password" class="form-control"
								id="exampleInputPassword1" placeholder="" required="">
						</div>
						<div class="form-check mb-3">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1">
							<p class="form-check-p">Check me out</p>
						</div>
						<button type="submit" class="btn submit">Sign In</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!--//Login-->
<!--/Register-->
<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header text-center">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="login px-4 py-4 mx-auto mw-100">
					<h5 class="text-center mb-4">Register Now</h5>
					<form action="#" method="post">
						<div class="form-group ">
							<p class="mb-2">First name</p>
							<input type="text" class="form-control" id="validationDefault01"
								placeholder="" required="">
						</div>
						<div class="form-group">
							<p class="mb-2">Last name</p>
							<input type="text" class="form-control" id="validationDefault02"
								placeholder="" required="">
						</div>
						<div class="form-group">
							<p class="mb-2">Password</p>
							<input type="password" class="form-control" id="password1"
								placeholder="" required="">
						</div>
						<div class="form-group">
							<p class="mb-2">Confirm Password</p>
							<input type="password" class="form-control" id="password2"
								placeholder="" required="">
						</div>
						<button type="submit" class="btn submit ">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!--//Register-->


<script src="/../assets/js/app.js"></script>
<script src="/../assets/js/controller.js"></script>

<!--js working-->
<script src='/../assets/js/jquery-2.2.3.min.js'></script>
<!--//js working-->
<!--responsiveslides banner-->
<script src="/../assets/js/responsiveslides.min.js"></script>
<script>
	// You can also use "$(window).load(function() {"
	$(function() {
		// Slideshow 4
		$("#slider4").responsiveSlides({
			auto : true,
			pager : false,
			nav : true,
			speed : 900,
			namespace : "callbacks",
			before : function() {
				$('.events').append("<li>before event fired.</li>");
			},
			after : function() {
				$('.events').append("<li>after event fired.</li>");
			}
		});

	});
</script>
<!--// responsiveslides banner-->
<!--About OnScroll-Number-Increase-JavaScript -->
<script src="/../assets/js/jquery.waypoints.min.js"></script>
<script src="/../assets/js/jquery.countup.js"></script>
<script>
	$('.counter').countUp();
</script>
<!-- //OnScroll-Number-Increase-JavaScript -->
<!-- start-smoth-scrolling -->
<script src="/../assets/js/move-top.js"></script>
<script src="/../assets/js/easing.js"></script>
<script>
	$(window).load(function() {
		$('#myModal').modal('show');
	});

	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
<script>
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1100,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //here ends scrolling icon -->
<!--bootstrap working-->
<script src="/../assets/js/bootstrap.min.js"></script>
<!-- //bootstrap working-->
</body>
</html>