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
            <li>Study Spot Reviews</li>
          </ol>
        </div>

      </div>
    </section><!-- End Header 2 -->


  <!-- ======= Write a Review Section ======= -->
    <section id="faq" class="faq">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Reviews</h2>
          <p>Read and write reviews about study spots on campus</p><br>
          <div class="text-center"><button class = "button" onclick="javascript:toggleDiv('registerstuff');">Write a Review</button>
            <br><br>
            <div id = "registerstuff" class = "hidden">
              <form action = "ReviewController" class="my-login-validation" novalidate="">
                <div class="form-group">
									<label for="username"><b>Username</b></label>
									<input id="username" type="text" class="form-control" name="username" required data-eye>
									<div class="invalid-feedback">
										Please enter a username
								</div>
                </div>
                <div class="form-group">
									<label for="reviewID"><b>Review ID</b></label>
									<input id="reviewID" type="number" class="form-control" name="reviewID" required data-eye>
									<div class="invalid-feedback">
										Please enter a review ID
								</div>
                </div>
                <div class="form-group">
									<label for="locationID"><b>Location ID</b></label>
									<input id="locationID" type="locationID" class="form-control" name="locationID" required data-eye>
									<div class="invalid-feedback">
										Please enter a location ID
								</div>
                </div>
                <div class="form-group">
									<label for="rating"><b>Rating (out of 5)</b></label>
									<input id="rating" type="number" class="form-control" name="rating" required data-eye>
									<div class="invalid-feedback">
										Please type a number from 1-5
								</div>
              </div>
								<div class="form-group">
									<label for="location"><b>Location</b></label>
									<select name="location" id="location" class="form-control">
										<option value=""></option>
										<option value="The Pit">The Pit</option>
										<option value="Sides Cafe">Sides Cafe</option>
                    <option value="University of Toronto Students Union">University of Toronto Students Union</option>
                    <option value="Wilcocks Common">Wilcocks Common</option>
                    <option value="Queens Park">Queens Park</option>
                    <option value="Grange Park">Grange Park</option>
                    <option value="Chemical Engineering Common room">Chemical Engineering Common room</option>
                    <option value="Civil Engineering Common room">Civil Engineering Common room</option>
                    <option value="Engineering Science Common room">Engineering Science Common room</option>
                    <option value="Mineral Engineering Common room">Mineral Engineering Common room</option>
                    <option value="Material Science Common room">Material Science Common room</option>
                    <option value="Electrical and Computer Engineering Common room">Electrical and Computer Engineering Common room</option>
                    <option value="Mechanical and Industrial Engineering Common room">Mechanical and Industrial Engineering Common room</option>
                    <option value="TrackOne Engineering Common room">TrackOne Engineering Common room</option>
                    <option value="Stanford Fleming Computer Lab">Stanford Fleming Computer Lab</option>
                    <option value="Walberg Computer Lab">Walberg Computer Lab</option>
                    <option value="Engineering Annex Computer Lab">Engineering Annex Computer Lab</option>
                    <option value="Mechanical and Industrial Engineering Computer Lab">Mechanical and Industrial Engineering Computer Lab</option>
                    <option value="Mechanical and Industrial Engineering Computer Lab">Mechanical and Industrial Engineering Computer Lab</option>
                    <option value="Chemical Engineering Computer Lab">Chemical Engineering Computer Lab</option>
                    <option value="Mineral Engineering Computer Lab">Mineral Engineering Computer Lab</option>
                    <option value="Material Science Engineering Computer Lab">Material Science Engineering Computer Lab</option>
                    <option value="Engineering Science Computer Lab">Engineering Science Computer Lab</option>
                    <option value="Civil Engineering Computer Lab">Civil Engineering Computer Lab</option>
                    <option value="Hart House Circle park">Hart House Circle park</option>
                    <option value="Knox Library">Knox Library</option>
                    <option value="Victoria College E J Pratt Library">Victoria College E J Pratt Library</option>
                    <option value="University College Library">University College Library</option>
                    <option value="Robarts Library">Robarts Library</option>
                    <option value="Gerstein Library">Gerstein Library</option>
                    <option value="Eberhard Zeidler Library">Eberhard Zeidler Library</option>
                    <option value="Innis College Library">Innis College Library</option>
                    <option value="Law Library (Bora Laskin)">Law Library (Bora Laskin)</option>
                    <option value="New College Library (Ivey)">New College Library (Ivey)</option>
                    <option value="St. Michael’s College - John M. Kelly Library">St. Michael’s College - John M. Kelly Library</option>
                    <option value="Trinity College Library (John W Graham Library)">Trinity College Library (John W Graham Library)</option>
                    <option value="Earth Sciences Library (Noranda)">Earth Sciences Library (Noranda)</option>
									  </select>
									<div class="invalid-feedback">
										Please select one option
									</div>
								</div>
								<div class="form-group">
									<label for="rating"><b>Rating (out of 5)</b></label>
									<input id="rating" type="number" class="form-control" name="rating" required data-eye>
									<div class="invalid-feedback">
										Please type a number from 1-5
								</div>
                </div>
                <br>
								<div class="form-group">
									<label for="recommend"><b>Do you recommend this place?</b></label>
									<select name="recommend" id="recommend" class="form-control">
										<option value=""></option>
										<option value="True">Yes</option>
										<option value="False">No</option>
									  </select>
									<div class="invalid-feedback">
										Please select one option
									</div>
								</div>
                <div class="form-group">
									<label for="review"><b>Write your Review Here</b></label>
                  <br>
                  <textarea class = "form-control" name="review" id="review" cols="20" rows="5"></textarea>
									<!-- <input name="reviewtext" id="reviewtext" type="text" class="form-control" size ="1000" required data-eye > -->
									<div class="invalid-feedback">
										Please type a number from 1-5
								</div>
                </div>
                <br><br>
								<div class="form-group m-0">
									<button type="submit" class="button">
										Submit Review
									</button>
								</div>
							</form>
            </div>

          </div>
        </div>
        
        <br><br>
        <c:forEach items = "${listofall}" var = "Review">
        <div class="faq-list">
          <ul>
            <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="100">
              <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-1"><c:out value = "${Review.location}"/><i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
               <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                <p>
                  <b>Review</b> <c:out value = "${Review.reviewID}"/> <b>:</b><br>
                  <b>Reviewed by:</b> <c:out value = "${Review.username}"/><br>
                  <b>Location ID:</b> <c:out value = "${Review.locationID}"/><br>
                  <b>Rating:</b> <c:out value = "${Review.rating}"/><br>
                  <b>Recommend?:</b> <c:out value = "${Review.recommend}"/><br>
                  <b>Review:</b> <c:out value = "${Review.review}"/><br>
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