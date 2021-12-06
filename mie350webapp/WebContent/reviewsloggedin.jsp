<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 
  <script src="assets/js/buttontoggle.js"></script>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
      <h1 class="logo"><a href="indexloggedin.jsp">StudySpotter</a></h1>
      <%@ include file="navbar_loggedin.jsp"%>

    </div>
  </header><!-- End Header -->

	<!-- ======= Header 2 ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="indexloggedin.jsp">Home</a></li>
            <li>Study Spot Reviews</li>
          </ol>
        </div>

      </div>
    </section><!-- End Header 2 -->


  <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Reviews</h2>
          <p>Read and write reviews about study spots on campus</p><br>
          <div class="text-center"><button class = "button" onclick="buttontoggle()">Write a Review</button>
            <div id = "registerstuff">
              <p>hi</p>
            </div>
          </div>
        </div>

        <div class="faq-list">
          <ul>
            <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="100">
              <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-2">Study Spot B <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
               <div id="faq-list-2" class="collapse show" data-bs-parent=".faq-list">
                 <p>
                   Info on study spot A
                 </p>
               </div>
             </li>

          </ul>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->
  </main><!-- End #main -->

		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->
</body>

</html>