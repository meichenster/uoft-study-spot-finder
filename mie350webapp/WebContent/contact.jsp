<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
  <!DOCTYPE html>
  <html lang="en">
  <%@ include file="head.jsp" %>
    <body>
      <!-- ======= Header ======= -->
      <header id="header" class="fixed-top header-inner-pages">
        <div class="container d-flex align-items-center justify-content-between">
          <h1 class="logo"><a href="index.jsp">StudySpotter</a></h1>
          <%@ include file="navbar.jsp" %>
        </div>
      </header><!-- End Header -->
      <!-- ======= Header 2 ======= -->
      <section class="breadcrumbs">
        <div class="container">
          <div class="d-flex justify-content-between align-items-center">
            <ol>
              <li><a href="index.jsp">Home</a></li>
              <li>Contact</li>
            </ol>
          </div>
        </div>
      </section><!-- End Header 2 -->
      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
          <div class="section-title">
            <h2>Contact</h2>
            <p>Contact us using the information below or leave us a message and we will respond to you as soon as
              possible.</p>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="info-box mb-4">
                <i class="bx bx-map"></i>
                <h3>Our Address</h3>
                <p>27 King's College Circle, Toronto, ON M5S 1A1</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="info-box  mb-4">
                <i class="bx bx-envelope"></i>
                <h3>Email Us</h3>
                <p>contact@fakemail.com</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="info-box  mb-4">
                <i class="bx bx-phone-call"></i>
                <h3>Call Us</h3>
                <p>+1 000-000-0000</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6 ">
              <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2886.387390756238!2d-79.39814048425946!3d43.66091245994953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b35bbce062033%3A0xd41da48a5c00f99b!2sUniversity%20of%20Toronto!5e0!3m2!1sen!2sca!4v1638058962688!5m2!1sen!2sca"
                width="550" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="col-lg-6">
              <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                  </div>
                  <div class="col-md-6 form-group mt-3 mt-md-0">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                  </div>
                </div>
                <div class="form-group mt-3">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>
                <div class="text-center"><button type="submit">Send Message</button></div>
              </form>
            </div>
          </div>
        </div>
      </section><!-- End Contact Section -->
      </main><!-- End #main -->
      <!-- ======= Footer ======= -->
      <%@ include file="footer.jsp" %>
        <!-- End Footer -->
    </body>
  </html>