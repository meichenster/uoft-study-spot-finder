<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import = "java.util.ArrayList, com.mie.dao.*, com.mie.model.*"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 

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
      <h1 class="logo"><a href="index.jsp">StudySpotter</a></h1>
		  <%@ include file="navbar.jsp"%>

    </div>
  </header><!-- End Header -->

	<!-- ======= Header 2 ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="index.jsp">Home</a></li>
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
          <div class="text-center"><a href = "login.jsp"></href><button class = "button">Write a Review</button></a></div>
        </div>
        <c:forEach items = "${listofall}" var = "Review">
        <div class="faq-list">
          <ul>
            <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="100">
              <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-1"><div class = "text-center"><h3>
                <c:out value = "${Review.reviewID}"/>. <c:out value = "${Review.location}"/></h3><i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></div></a>
               <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                <p>
                  <div id = "element1"><b>Location ID:</b> <c:out value = "${Review.locationID}"/></div>
                  <div id = "element1"><b>Rating (out of 5):</b> <c:out value = "${Review.rating}"/></div>
                  <div id = "element1"><b>Recommend?:</b> <c:out value = "${Review.recommend}"/></div>
                  <div id = "element1"><b>Reviewed by:</b> <c:out value = "${Review.username}"/></div><br><br>
                  <div class = "text-center"><c:out value = "${Review.review}"/></div>
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