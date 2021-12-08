<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html lang="en">
	<%@ include file="head.jsp" %>
		<body>
			<!-- ======= Header ======= -->
			<header id="header" class="fixed-top ">
				<div class="container d-flex align-items-center justify-content-between">
					<h1 class="logo"><a href="indexloggedin.jsp">StudySpotter</a></h1>
					<%@ include file="navbar_loggedin.jsp" %>
				</div>
			</header><!-- End Header -->
			<!-- = Hero Section ======= -->
			<section id="hero" class="d-flex align-items-center">
				<div class="container-fluid" data-aos="fade-up">
					<div class="row justify-content-center">
						<div
							class="col-xl-5 col-lg-6 pt-3 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
							<h1>UofT Study&nbsp; Spotter&nbsp;</h1>
							<h2>Your guide to the best study spots on campus</h2>
						</div>
						<div class="col-xl-4 col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in"
							data-aos-delay="150"> </div>
					</div>
				</div>
			</section><!-- End Hero -->
			<main id="main">
				<!-- ======= Features Section ======= -->
				<section id="features" class="features">
					<div class="container" data-aos="fade-up">
						<div class="section-title">
							<h2>Welcome to uoft studyspotter!&nbsp; &nbsp; &nbsp;</h2>
							<p>Over the past year, students haven't been able to come to campus due to the COVID-19
								pandemic.
								Many of the current first-year and second-year students have never been on campus
								before,
								and the upper-year students may have not had the opportunity to explore the campus
								enough in their first or second year.
								In order to address the students' unfamiliarity with the campus, we want to help
								students find the best study spots on and around UofT's St. George campus.
								In addition, this can aid students in finding new areas to meet for group meetings. To
								get started, 'Log In' or select a link from the 'Study Spots' dropdown.</p>
						</div>
						<div class="row">
							<div class="col-lg-6 order-2 order-lg-1 d-flex flex-column align-items-lg-center">
								<div class="icon-box mt-5 mt-lg-0" data-aos="fade-up" data-aos-delay="100">
									<i class="bx bx-location-plus"></i>
									<h4>Find your next meeting location</h4>
									<p>Search through our database of study spots to find the best location for your
										meeting needs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
								</div>
								<div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="200">
									<i class="bx bx-time"></i>
									<h4>Discover&nbsp; a new study spot in seconds</h4>
									<p>Waste less time looking for your next study spot and more time reviewing your
										notes&nbsp;</p>
								</div>
							</div>
							<div class="col-lg-6 order-2 order-lg-1 d-flex flex-column align-items-lg-center">
								<div class="icon-box mt-5 mt-lg-0" data-aos="fade-up" data-aos-delay="100">
									<i class="bx bx-receipt"></i>
									<h4>Review and rate study spots&nbsp;</h4>
									<p>Read and write reviews for study spots from our extensive database to discover
										the best location to visit.&nbsp; &nbsp; &nbsp;</p>
								</div>
								<div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="200">
									<i class="bx bx-log-in-circle"></i>
									<h4>Save your favorite study spots</h4>
									<p>Create an account to save your favorite study spots to your profile and quickly
										access them.</p>
								</div>
							</div>
						</div>

					</div>
				</section><!-- End Features Section -->
			</main><!-- End #main -->
			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp" %>
				<!-- End Footer -->
		</body>
	</html>