<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp"%> 

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
    <main role="main" class="container-fluid">
      <div class="row">
        <div class="col-md-4">
          <p>Search for a study spot and filter by your desired criteria&nbsp; &nbsp; </p>

          <div class="card bg-light">
            <div class="card-body">
              <div class="row">
                <div class="col-md-8">
                  <div class="form-group">
                      Near an address
                      <input class="form-control" id="search-address" placeholder="Enter an address" type="text">
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="form-group">
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
                  <div class="form-group">
                      Search by name
                      <input class="form-control" id="search-name" placeholder="Enter a business or organization name" type="text">
                  </div>
                </div>
              </div>

              <button class="btn btn-primary" id="btnSearch"><i class="fa fa-search"></i> Search</button>
              <a href="/" class="btn btn-secondary" id="btnReset" title="Reset"><i class="fa fa-repeat" aria-hidden="true"></i> Reset</a>
              <button class="btn btn-dark" id="btnViewMode" title="Change view"><i class="fa fa-list"></i> List view</button>

              </div>
            </div>
          </div>

          <div class="col-md-8">
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