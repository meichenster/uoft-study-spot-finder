<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"
  import = "javax.servlet.http.HttpSession, javax.servlet.http.HttpServletRequest,  
  javax.servlet.http.HttpServletResponse, javax.servlet.http.HttpServlet, java.util.ArrayList, com.mie.dao.*, com.mie.model.*"%> 
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 
  <%
  User user = new User();
  UserDao dao = new UserDao();
  ArrayList <User> listofnames = new ArrayList <User>();
  listofnames = dao.getAllUsers();
  request.setAttribute("listofnames", listofnames);
%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
            <li>Find a Study Spot</li>
          </ol>
        </div>
      </div>
    </section><!-- End Header 2 -->
    <br><br>
    <main role="main" class="container-fluid">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-4">
          <div class="card bg-light">
            <div class="card-body">
              <div class="row">
                <div class="col-md-8">
                  <div class="form-group" style="display:none">
                      Near an address
                      <input class="form-control" id="search-address" placeholder="Enter an address" type="text">
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="form-group" style="display:none">
                      Within
                      <select id="search-radius" class="form-control">
                        <option value="400">2 blocks</option>
                        <option value="805">1/2 mile</option>
                        <option value="1610">1 mile</option>
                        <option value="3220">2 miles</option>
                        <option value="8050">5 miles</option>
                      </select>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12">
                  <div class="form-group" style="display:none">
                      Search by name
                      <input class="form-control" id="search-name" placeholder="Enter a business or organization name" type="text">
                  </div>
                </div>
              </div>
              <div class = "row">
                <p>View the list of study spots and save your favorite ones. Select 'List View' to see the full list of study spots and their information. Hover over any green
                  marker to see more details about the study spot.
                </p>
              </div>
              <div class="row">
                <div class="col-md-12">
                <!-- <button class = "btn btn-secondary" onclick="javascript:toggleDiv('registerstuff2');">Save a spot</button> -->
              <!-- <button class="btn btn-primary" id="btnSearch" style="display:none"><i class="fa fa-search"></i> Search</button>
              <a href="/" class="btn btn-secondary" id="btnReset" title="Reset" style="display:none"><i class="fa fa-repeat" aria-hidden="true"></i> Reset</a> -->
              <div class="text-center">
              <button class="btn btn-dark" id="btnViewMode" title="Change view"><i class="fa fa-list"></i> List view</button></div>
            </div>  
            </div>
            <div class="row">
            <div id = "registerstuff2">
            <!-- favorite form -->
            <br>
              <form action = "SavedSpotsController" class="my-login-validation" novalidate="">
								<div class="form-group">
                <p><b>Please select your Username</b></p>
                <form action = "SavedSpotsController">
                    <select class="form-control" name = "un" onchange="this.form.submit()">
                      <option disabled selected value> </option> 
                    <c:forEach items="${listofnames}" var="User"> 
                      <option value="${User.username}">${User.username}</option>
                    </c:forEach>
                  </select>
                  <br>
                </form>
									<label for="location"><b>Please select a Location to save</b></label>
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
                  <br>
                  <label for="locid">Location ID</label>
									<input id="locid" type="number" class="form-control" name="locationID" required data-eye>
									<div class="invalid-feedback">
										What's the Location ID?
									</div>
                  <br>
                  <label for="rating">Rating (1-5)</label>
									<input id="rating" type="text" class="form-control" name="rating" required data-eye>
									<div class="invalid-feedback">
										What's your Rating?
									</div>
                  <br>
								<div class="form-group m-0">
                  <div class="text-center">
									<button type="submit" class="button">
										Save Location
									</button>
                </div>
								</div>
							</form>
            </div>
          </div> 
            <!-- End of favorite form -->
            </div>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div id="mapCanvas" style="display: block; height: 1000px;"></div>
            <div id="listCanvas" style="display: none">
              <h2 class="list-header hidden-xs">Search results <small id="list-result-count"></small></h2>
              
              <div class="table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">Location</th>
                      <th scope="col">Address</th>
                      <th scope="col">Capacity</th>
                      <th scope="col">Opening</th>
                      <th scope="col">Closing</th>
                      <th scope="col">Discipline</th>
                      <th scope="col">Computer</th>
                      <th scope="col">Food</th>
                      <th scope="col">Table</th>
                      <th scope="col">Area</th>	
                    </tr>
                  </thead>
                  <tbody id="results-list"></tbody>
                </table>
              </div>
            </div>
            <p class="float-right">Based on <a href="https://github.com/datamade/searchable-map-template-csv" target="_blank">Searchable Map Template - CSV</a> by <a href="https://derekeder.com/" target="_blank">Derek Eder</a> and <a href="https://datamade.us/" target="_blank">DataMade</a></p>
          </div>
        </div>

        <div class="modal fade" id="modal-pop" tabindex="-1" role="dialog">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-body">
                <div class="container-fluid bd-example-row">
                  <div class="row">
                    <div class="col-md-12">
                      <button type="button" class="close close-btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times-circle" aria-hidden="true"></i></span></button>
                      <div id="modal-main"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <script type="text/javascript" src="assets/js/map.js"></script>

    </main>
	  
		<!-- ======= Footer ======= -->
		<%@ include file="footer.jsp"%> 
		<!-- End Footer -->

  </body>
</html>