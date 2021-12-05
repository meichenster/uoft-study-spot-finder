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
		
      <%@ include file="navbar.jsp"%>

    </div>
  </header><!-- End Header -->
	
	<!-- ======= Header 2 ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>About</li>
          </ol>
        </div>

      </div>
    </section><!-- End Header 2 -->

       <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in" data-aos-delay="150">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right">
            <h3>&nbsp;About Us</h3>
            <p>
              We are a team of 6 undergraduate Industrial Engineering students from the University of Toronto who are passionate about facilitating resources to guide the student learning experience. We developed this web application over the course of 4 months for our MIE350 course, Design and Analysis of Information Systems. We are pleased that you have chosen to use (insert website name) as a study companion and please don’t hesitate to reach out if you have any feedback or questions!
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

  </main><!-- End #main -->

		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->
</body>

</html>