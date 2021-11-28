<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0" name="viewport">
	  
		<title>Study Spotter</title>
		<meta content="" name="description">
		<meta content="" name="keywords">
	  
		<!-- Favicons -->
		<link href="assets/img/favicon.png" rel="icon">
		<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	  
		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	  
		<!-- Vendor CSS Files -->
		<link href="assets/vendor/aos/aos.css" rel="stylesheet">
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
		<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
		<link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
		<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	  
		<!-- Template Main CSS File -->
		<link href="assets/css/style.css" rel="stylesheet">
	  
		<!-- =======================================================
		* Template Name: Techie - v4.7.0
		* Template URL: https://bootstrapmade.com/techie-free-skin-bootstrap-3/
		* Author: BootstrapMade.com
		* License: https://bootstrapmade.com/license/
		======================================================== -->
	  </head>
	  
	  <body>
	  
		<!-- ======= Header ======= -->
		<header id="header" class="fixed-top ">
		  <div class="container d-flex align-items-center justify-content-between">
			<h1 class="logo"><a href="index.html">StudySpotter</a></h1>
			  
			<nav id="navbar" class="navbar">
			  <ul>
				<li><a class="nav-link scrollto active" href="index.html">Home</a></li>
				<li><a class="nav-link scrollto" href="about.html">About</a></li>
				<li class="dropdown"><a href="#"><span>Study Spots</span> <i class="bi bi-chevron-down"></i></a>
				  <ul>
					<li><a href="searchspot.html">Find a Study Spot</a></li>
					<li><a href="Reviews.html">Study Spot Reviews</a></li>
				  </ul>
				</li>
				<li><a class="nav-link scrollto" href="contact.html">Contact Us</a></li>
				<li>
					<a class="getstarted scrollto" href="#about" data-bs-toggle="modal" data-bs-target="#feedbackModal">Log In</a>
				</li>
			  </ul>
			  <i class="bi bi-list mobile-nav-toggle"></i>
			</nav><!-- .navbar -->
	  
		  </div>
		</header><!-- End Header -->
	  
		<!-- ======= Hero Section ======= -->
		<section id="hero" class="d-flex align-items-center">
	  
		  <div class="container-fluid" data-aos="fade-up">
			<div class="row justify-content-center">
			  <div class="col-xl-5 col-lg-6 pt-3 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
				<h1>UofT Study&nbsp; Spotter&nbsp;</h1>
				<h2>Your guide to the best study spots on campus</h2>
			  </div>
			  <div class="col-xl-4 col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="150"> </div>
			</div>
		  </div>
	  
		</section><!-- End Hero -->
	  
		<main id="main">
	  
		  <!-- ======= Features Section ======= -->
		  <section id="features" class="features">
			<div class="container" data-aos="fade-up">
	  
			  <div class="section-title">
				<h2>IDK</h2>
				<p>Some text!!!</p>
			  </div>
	  
			  <div class="row">
				<div class="col-lg-6 order-2 order-lg-1 d-flex flex-column align-items-lg-center">
				  <div class="icon-box mt-5 mt-lg-0" data-aos="fade-up" data-aos-delay="100">
					<i class="bx bx-receipt"></i>
					<h4>some thing</h4>
					<p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
				  </div>
				  <div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="200">
					<i class="bx bx-cube-alt"></i>
					<h4>something</h4>
					<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
				  </div>
				  <div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="300">
					<i class="bx bx-images"></i>
					<h4>something</h4>
					<p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
				  </div>
				</div>
			  </div>
	  
			</div>
		  </section><!-- End Features Section -->
			  <!-- Feedback Modal-->
			  <div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="feedbackModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered">
					  <div class="modal-content">
						  <div class="modal-header bg-gradient-primary-to-secondary p-4">
							  <h5 class="modal-title font-alt text-black" id="feedbackModalLabel">Log In</h5>
							  <button class="btn-close btn-close-black" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
						  </div>
						  <div class="modal-body border-0 p-4">
							  <!-- * * * * * * * * * * * * * * *-->
							  <!-- * * SB Forms Contact Form * *-->
							  <!-- * * * * * * * * * * * * * * *-->
							  <!-- This form is pre-integrated with SB Forms.-->
							  <!-- To make this form functional, sign up at-->
							  <!-- https://startbootstrap.com/solution/contact-forms-->
							  <!-- to get an API token!-->
							  <form id="contactForm" data-sb-form-api-token="API_TOKEN">
								  <!-- Name input-->
								  <div class="form-floating mb-3">
									  <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
									  <label for="name">Username</label>
									  <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
								  </div>
								  <!-- Email address input-->
								  <div class="form-floating mb-3">
									  <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
									  <label for="email">Password</label>
									  <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
									  <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
								  </div>
								  <!-- This is what your users will see when the form-->
								  <!-- has successfully submitted-->
								  <div class="d-none" id="submitSuccessMessage">
									  <div class="text-center mb-3">
										  <div class="fw-bolder">Form submission successful!</div>
										  To activate this form, sign up at
										  <br />
										  <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
									  </div>
								  </div>
								  <!-- Submit error message-->
								  <!---->
								  <!-- This is what your users will see when there is-->
								  <!-- an error submitting the form-->
								  <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
								  <!-- Submit Button-->
								  <div class="d-grid"><button class="btn btn-primary rounded-pill btn-lg disabled" id="submitButton" type="submit">Submit</button></div>
							  </form>
						  </div>
					  </div>
				  </div>
			  </div>
			<!-- ======= End of Feedback Modal ======= --> 
		</main><!-- End #main -->
	  
		<!-- ======= Footer ======= -->
		<footer id="footer">
	  
		  <div class="footer-top">
		  </div>
	  
		  <div class="container">
	  
	  
	  
		  </div>
		</footer><!-- End Footer -->
	  
		<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
		<div id="preloader"></div>
	  
		<!-- Vendor JS Files -->
		<script src="assets/vendor/purecounter/purecounter.js"></script>
		<script src="assets/vendor/aos/aos.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
		<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
		<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
		<script src="assets/vendor/php-email-form/validate.js"></script>
	  
		<!-- Template Main JS File -->
		<script src="assets/js/main.js"></script>
	  
	  </body>
	  
	  </html>