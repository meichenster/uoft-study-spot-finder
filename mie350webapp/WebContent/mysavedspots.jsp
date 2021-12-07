<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import = "java.util.ArrayList, com.mie.dao.*, com.mie.model.*"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 
  <script src="assets/js/buttontoggle.js"></script>

<body>
  <%
  Review reviews = new Review();
  ReviewDao dao = new ReviewDao();
  ArrayList <Review> listofall = new ArrayList <Review>();
  listofall = dao.getReviews(reviews);
  request.setAttribute("listofall", listofall);
%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
            <li>My Saved Spots</li>
          </ol>
        </div>

      </div>
    </section><!-- End Header 2 -->


  <!-- ======= Saved Spots Section ======= -->
    <section id="savedspots" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>My Saved Spots</h2>
          <p>View your saved spots</p><br>
            <div id = "registerstuff" class = "hidden">
          </div>
        </div>
        
        <br><br>
        <c:forEach items = "${listofall}" var = "Review">
          <div class="faq-list">
            <ul>
              <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="100">
                <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-1"><c:out value = "${Review.location}"/><i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                 <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                  <p class = "faq-list">
                    Location ID: <c:out value = "${Review.locationID}"/><br>
                    Rating: <c:out value = "${Review.rating}"/><br>
                    Review ID: <c:out value = "${Review.reviewID}"/><br>
                    Username: <c:out value = "${Review.username}"/><br>
                   </p>
                 </div>
               </li>
            </ul>
          </div>
        </c:forEach>
      </div>
    </section><!-- End Frequently Asked Questions Section -->
  </main><!-- End #main -->

		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->
</body>

</html>