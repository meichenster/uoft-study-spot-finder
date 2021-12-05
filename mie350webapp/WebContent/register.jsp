<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 
<body>
<!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
      <h1 class="logo"><a href="index.jsp">StudySpotter</a></h1>
		
<nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="index.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="about.jsp">About</a></li>
          <li class="dropdown active"><a href="#"><span>Study Spots</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="searchspot.jsp">Find a Study Spot</a></li>
              <li><a href="Reviews.jsp">Study Spot Reviews</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="contact.jsp">Contact Us</a></li>
          <li><a class="getstarted scrollto" href="login.jsp">Log In</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

<body class="my-login-page">
	<!-- ======= Header 2 ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>Register</li>
          </ol>
        </div>
      </div>
    </section><!-- End Header 2 -->
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Register</h4>
							<form action = "RegisterController" class="my-login-validation" novalidate="">
								<div class="form-group">
									<label for="name">Username</label>
									<input id="name" type="text" class="form-control" name="un" required autofocus>
									<div class="invalid-feedback">
										What's your username?
									</div>
								</div>

								<div class="form-group">
									<label for="password">Password</label>
									<input id="password" type="password" class="form-control" name="pw" required data-eye>
									<div class="invalid-feedback">
										Password is required
									</div>
								</div>
								<div class="form-group">
									<label for="fac">Faculty</label>
									<select name="fac" id="fac" class="form-control">
										<option value=""></option>
										<option value="Applied Science and Engineering">Applied Science and Engineering</option>
										<option value="Architecture">Architecture</option>
										<option value="Arts and Science">Arts and Science</option>
										<option value="Kinesiology">Kinesiology</option>
										<option value="Music">Music</option>
									  </select>
									<div class="invalid-feedback">
										What's your Faculty?
									</div>
								</div>
								<div class="form-group">
									<label for="program">Program</label>
									<select name="program" id="program" class="form-control">
										<option value=""></option>
										<option value="Architecture">Architecture</option>
										<option value="Chemical">Chemical</option>
										<option value="Computer">Computer</option>
										<option value="Composition">Composition</option>
										<option value="Economics">Economics</option>
										<option value="Industrial">Industrial</option>
										<option value="Kinesiology">Kinesiology</option>
										<option value="Materials">Materials</option>
										<option value="Mechanical">Mechanical</option>
										<option value="TrackOne">TrackOne</option>
									  </select>
									<div class="invalid-feedback">
										What's your Program?
									</div>
								</div>
								<div class="form-group">
									<label for="yos">Year Of Study</label>
									<input id="yos" type="text" class="form-control" name="year" required data-eye>
									<div class="invalid-feedback">
										What's your Year Of Study?
									</div>
								</div>
								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Register
									</button>
								</div>
								<div class="mt-4 text-center">
									Already have an account? <a href="login.jsp">Login</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
	
		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->
	</body>
</body>
</html>