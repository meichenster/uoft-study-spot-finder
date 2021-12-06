 <%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 
	<header id="header" class="fixed-top header-inner-pages">
		<div class="container d-flex align-items-center justify-content-between">
		  <h1 class="logo"><a href="index.jsp">StudySpotter</a></h1>	
		  <%@ include file="navbar.jsp"%>
		</div>
	  </header><!-- End Header -->
<body>
<section class="contact">
	<div class="container" data-aos="fade-up">
		<div class="row content">
			<div class="col-sm-8 text-left">

				<h1>Invalid Login</h1>

				Please double-check your credentials and log in again.

			</div>
		</div>
	</div>
</section>
	<%@ include file="footer.jsp"%>
</body>
</html>