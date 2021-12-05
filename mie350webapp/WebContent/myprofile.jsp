<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html>
<html lang="en">
  <%@page import="java.io.*, java.util.Date, java.util.Enumeration" %> 
  <%@ include file="head.jsp"%> 

<body>
	<%
		User users = (User) session.getAttribute("currentSessionUser");
		String username = (String) session.getAttribute("username");
    String faculty = (String) session.getAttribute("faculty");
    String program = (String) session.getAttribute("program");
    Integer yearOfStudy = (Integer) session.getAttribute("yearOfStudy");
    Date dateCreated = (Date) session.getAttribute("dateCreated");
	%>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
      <h1 class="logo"><a href="indexloggedin.jsp">StudySpotter</a></h1>
      <%@ include file="navbar_loggedin.jsp"%>
    </div>
  </header><!-- End Header -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Account overview</h2>
          <p>Profile Information</p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Username</h3>
              <p><%=username%></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Faculty</h3>
              <p><%=faculty%></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Program</h3>
              <p><%=program%></p>
            </div>
          </div>
			
		  <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Year of Study</h3>
              <p><%=yearOfStudy%></p>
            </div>
          </div>
		<p>Member Since: <%=dateCreated%></p>
    <div class="text-center"><button action = "LogoutServlet">Log Out</button></div>
        </div>
      </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->
</body>

</html>