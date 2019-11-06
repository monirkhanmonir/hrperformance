<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="header.jsp"></jsp:include>
<!-- Slideshow 4 -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider4">
			<li>
				<div class="slider-img one-img">
					<div class="container">
						<div class="slider-info ">
							<h5>Focus on Mission</h5>
							<div class="slider-sub">
								<h6>We Focus on our HR</h6>
							</div>
							<div class="bottom-info">
								<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit,
									sed do eiusmod tempor incididunt utadipiscing</p>
							</div>
							<div class="outs_more-buttn">
								<a href="about.html">Read More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="slider-img two-img">
					<div class="container">
						<div class="slider-info ">
							<h5>Expert knowledge</h5>
							<div class="slider-sub">
								<h6>Best work place</h6>
							</div>
							<div class="bottom-info">
								<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit,
									sed do eiusmod tempor incididunt utadipiscing</p>
							</div>
							<div class="outs_more-buttn">
								<a href="about.html">Read More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="slider-img three-img">
					<div class="container">
						<div class="slider-info">
							<h5>Face Your Challenge</h5>
							<div class="slider-sub">
								<h6>Become a Winner</h6>
							</div>
							<div class="bottom-info">
								<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit,
									sed do eiusmod tempor incididunt utadipiscing</p>
							</div>
							<div class="outs_more-buttn">
								<a href="about.html">Read More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<!-- This is here just to demonstrate the callbacks -->
	<!-- <ul class="events">
            <li>Example 4 callback events</li>
            </ul>-->
	<div class="clearfix"></div>
</div>
<!-- //banner -->
<!-- //about -->
<section class="about py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-5 py-sm-4 py-4">
		<div class="row w3layout-abt-info text-center">
			<div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts">
				<div class="abtr-inner-sub">
					<span class="fa fa-pie-chart" aria-hidden="true"></span>
					<div class="abt-icon-list-wls mt-3">
						<h4 class="mb-3">Good Skills</h4>
						<p>delectus reiciendis maiores alias consequatur aut.maiores
							alias consequatur aut.maiores alias maiores alias</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts">
				<div class="abtr-inner-sub">
					<span class="fa fa-check" aria-hidden="true"></span>
					<div class="abt-icon-list-wls mt-3">
						<h4 class="mb-3">Experts Help</h4>
						<p>delectus reiciendis maiores alias consequatur aut.maiores
							alias consequatur aut.maiores alias maiores alias</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts">
				<div class="abtr-inner-sub">
					<span class="fa fa-area-chart" aria-hidden="true"></span>
					<div class="abt-icon-list-wls mt-3">
						<h4 class="mb-3">Innovation</h4>
						<p>delectus reiciendis maiores alias consequatur aut.maiores
							alias maiores alias</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts">
				<div class="abtr-inner-sub">
					<span class="fa fa-cubes" aria-hidden="true"></span>
					<div class="abt-icon-list-wls mt-3">
						<h4 class="mb-3">Creative</h4>
						<p>delectus reiciendis maiores alias consequatur aut.maiores
							alias</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//about -->
<!--service  -->
<section class="service py-lg-4 py-md-3 py-sm-3 py-3" id="service">
	<div class="container py-lg-5 py-md-5 py-sm-4 py-3">
		<h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Our
			Services</h3>
		<div class="row top-service pb-lg-4 pb-md-3 pb-2">
			<div class="col-lg-8 col-md-8 service-wthree-info-left">
				<div class="mb-lg-5 mb-md-4 mb-3 service-num-left">
					<h6>1</h6>
				</div>
				<h4 class="mb-lg-4 mb-3">Professional Agency</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet,
					consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem
					ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur
					adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor
					sit amet</p>
			</div>
			<div class="col-lg-4 col-md-4 ser-service gap-service text-center">
				<div class="service-icon-one">
					<img src="<c:url value='/assets/images/ser1.png'/>" alt="" class="img-fluid">
				</div>
			</div>
		</div>
		<div class=" my-lg-5 my-md-4 my-sm-4 my-3 row mid-service">
			<div class="col-lg-4 col-md-4 ser-service  text-center">
				<div class="service-icon-two move-right">
					<img src="<c:url value='/assets/images/ser2.png'/>" alt="" class="img-fluid">
				</div>
			</div>
			<div class="col-lg-8 col-md-8 service-wthree-info-left">
				<div class="mb-lg-5 mb-md-4 mb-3 service-num-left">
					<h6>2</h6>
				</div>
				<h4 class="mb-lg-4 mb-3">Tax Advice and Management</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet,
					consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem
					ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur
					adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor
					sit amet</p>
			</div>
		</div>
		<div class="row bottom-service pt-lg-4 pt-md-3 pt-2">
			<div class="col-lg-8 col-md-8 service-wthree-info-left">
				<div class="mb-lg-5 mb-md-4 mb-3 service-num-left">
					<h6>3</h6>
				</div>
				<h4 class="mb-lg-4 mb-3">Planning & Strategy</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet,
					consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem
					ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur
					adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor
					sit amet,</p>
			</div>
			<div class="col-lg-4 col-md-4 ser-service gap-service text-center">
				<div class="service-icon-three">
					<img src="<c:url value='/assets/images/ser3.png'/>" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
</section>
<!--//service  -->
<!--team-->
<section class="team py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-5 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Meet
			Our Team</h3>
		<div class="row pt-lg-5 pt-md-5 pt-sm-4 pt-3">
			<div class="col-lg-3 col-md-6 col-sm-6 ser-icon text-center">
				<div class="team-position">
					<div class="icon-wthree-top">
						<img src="<c:url value='/assets/images/t1.jpg'/>" alt="" class="img-fluid">
					</div>
					<div class="team-text-wthree">
						<h4>Sam Deo</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetuer
							adipiscing elit Lorem ipsum dolor sit amet, consectetur
							adipiscing</p>
					</div>
					<div class="icons-client text-center">
						<ul>
							<li><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-rss"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 ser-icon text-center">
				<div class="team-position">
					<div class="icon-wthree-top">
						<img src="<c:url value='/assets/images/t2.jpg'/>" alt="" class="img-fluid">
					</div>
					<div class="team-text-wthree">
						<h4>Max Will</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetuer
							adipiscing elit Lorem ipsum dolor sit amet, consectetur
							adipiscing</p>
					</div>
					<div class="icons-client text-center">
						<ul>
							<li><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-rss"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 ser-icon text-center">
				<div class="team-position">
					<div class="icon-wthree-top">
						<img src="<c:url value='/assets/images/t3.jpg'/>" alt="" class="img-fluid">
					</div>
					<div class="team-text-wthree">
						<h4>Ray Son</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetuer
							adipiscing elit Lorem ipsum dolor sit amet, consectetur
							adipiscing</p>
					</div>
					<div class="icons-client text-center">
						<ul>
							<li><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-rss"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 ser-icon text-center">
				<div class="team-position">
					<div class="icon-wthree-top">
						<img src="<c:url value='/assets/images/t4.jpg'/>" alt="" class="img-fluid">
					</div>
					<div class="team-text-wthree">
						<h4>Zone Hill</h4>
						<p class="mt-3">Lorem ipsum dolor sit amet, consectetuer
							adipiscing elit Lorem ipsum dolor sit amet, consectetur
							adipiscing</p>
					</div>
					<div class="icons-client text-center">
						<ul>
							<li><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-rss"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//team-->
<!--Testmonials-->
<section class="clients py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-5 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Testimonials</h3>
		<div class="testmonials text-center">
			<div id="blogCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#blogCarousel" data-slide-to="1">
					<li data-target="#blogCarousel" data-slide-to="2">
				</ol>
				<!-- Carousel items -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-lg-4 clients-gride-img ">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c1.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3">Rose Kent</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 clients-gride-img ">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c2.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3">Jack Will</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 clients-gride-img ">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c3.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
										</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3 ">Clark Deo</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--.row-->
					<div class="carousel-item">
						<div class="row">
							<div class="col-lg-4 clients-gride-img">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c1.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3">Rose Kent</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 clients-gride-img">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c2.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3">Jack Will</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 clients-gride-img">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c3.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
										</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3 ">Clark Deo</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--.row-->
					<!--.item-->
					<div class="carousel-item">
						<div class="row">
							<div class="col-lg-4 clients-gride-img ">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c1.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3">Rose Kent</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 clients-gride-img">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c2.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit
											Lorem ipsum dolor sit amet</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3">Jack Will</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 clients-gride-img">
								<div class="clients-gride-grid">
									<div class="mb-3 clients-w3pvt-img">
										<img src="<c:url value='/assets/images/c3.jpg'/>" alt=" " class="img-fluid">
									</div>
									<div class="clients-color-wthree text-center">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit
										</p>
										<div class="clients-txt-wls">
											<h4 class="mt-3 ">Clark Deo</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--.row-->
			</div>
		</div>
	</div>
	<!--carousel-inner-->
</section>
<!--//Testmonials-->
<!--stats-->
<section class="stats py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-5 py-sm-4 py-3">
		<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Fun
			Facts</h3>
		<div class="row">
			<div class="col-lg-5 col-md-5">
				<div class="jst-must-info text-center">
					<div class="row stats-info">
						<div class="col-md-6 col-sm-6 col-6 stats-grid-1">
							<div class=" stats-grid">
								<div class="counter">2045</div>
								<div class="stat-info">
									<h5 class="pt-2">Experience</h5>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-6 stats-grid-2">
							<div class=" stats-grid">
								<div class="counter">350</div>
								<div class="stat-info">
									<h5 class="pt-2">Staff</h5>
								</div>
							</div>
						</div>
						<div
							class="mt-lg-4 mt-md-3 mt-3 col-md-6 col-sm-6 col-6 stats-grid-3">
							<div class=" stats-grid">
								<div class="counter">1000</div>
								<div class="stat-info">
									<h5 class="pt-2">Coffee</h5>
								</div>
							</div>
						</div>
						<div
							class="mt-lg-4 mt-md-3 mt-3 col-md-6 col-sm-6 col-6 stats-grid-4">
							<div class=" stats-grid">
								<div class="counter">650</div>
								<div class="stat-info">
									<h5 class="pt-2">Projects</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-7 col-md-7 left-side-w3layouts">
				<div class="iteam-bar">
					<h5 class="pb-3">HR Magazine</h5>
					<div class="progress my-bar">
						<div class="progress-bar progress-bar-striped " role="progressbar"
							style="width: 75%"></div>
					</div>
				</div>
				<div class="iteam-bar pt-lg-4 pt-3">
					<h5 class="pb-3">Events & Blogs</h5>
					<div class="progress my-bar">
						<div class="progress-bar progress-bar-striped bg-success"
							role="progressbar" style="width: 80%"></div>
					</div>
				</div>
				<div class="iteam-bar pt-lg-4  pt-3">
					<h5 class="pb-3">Social Media</h5>
					<div class="progress my-bar">
						<div class="progress-bar progress-bar-striped bg-info"
							role="progressbar" style="width: 85%"></div>
					</div>
				</div>
				<div class="iteam-bar pt-lg-4 pt-3">
					<h5 class="pb-3">Requirements</h5>
					<div class="progress my-bar">
						<div class="progress-bar progress-bar-striped bg-danger"
							role="progressbar" style="width: 100%"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//stats-->
<jsp:include page="footer.jsp"></jsp:include>