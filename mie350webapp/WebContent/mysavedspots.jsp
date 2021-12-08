<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import = "javax.servlet.http.HttpSession, javax.servlet.http.HttpServletRequest,  javax.servlet.http.HttpServletResponse, javax.servlet.http.HttpServlet, java.util.ArrayList, com.mie.dao.*, com.mie.model.*"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 
  <script src="assets/js/buttontoggle.js"></script>

<body>
  <%
  User user = new User();
  UserDao dao = new UserDao();
  ArrayList <User> listofnames = new ArrayList <User>();
  listofnames = dao.getAllUsers();
  request.setAttribute("listofnames", listofnames);
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
<!-- 
        <!-- <div class="section-title"> -->
          <h2>My Saved Spots</h2>
          <!-- <p>Please select your Username</p><br>
          <form action = "SavedSpotsController">
          <select class="form-control" name = "un" onchange="this.form.submit()">
            <option disabled selected value> </option> 
          <c:forEach items="${listofnames}" var="User"> 
            <option value="${User.username}">${User.username}</option>
          </c:forEach>
        </select>
        <br>
      </form> -->
        </div>  -->
        <%
		    String username = (String) session.getAttribute("username");
        StudySpot studyspots = new StudySpot();
        SavedSpotsDao dao2 = new SavedSpotsDao();
        ArrayList <StudySpot> listofallspots = new ArrayList <StudySpot>();
        listofallspots = dao2.getAllSavedSpots(username);
        request.setAttribute("listofallspots", listofallspots);
      %>     
        <br><br>
        <c:forEach items = "${listofallspots}" var = "spots">
        <!-- <div class="row"> -->
          <div class="col-lg-12">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3> <c:out value = "${spots.location}"/></h3>
              <p>
              Location ID: <c:out value = "${spots.locationID}"/><br> 
              </p>
            </div>
          </div>
      <!-- </div> -->
    </c:forEach>
      </div>
    </section><!-- End Saved Spots Section -->
  </main><!-- End #main -->

		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->
</body>

</html>