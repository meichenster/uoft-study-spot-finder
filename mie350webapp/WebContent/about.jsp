<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<html lang="en">
<head>
<title>MIE350 Sample Web App - About</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">

</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1>About</h1>
				Over the past year, students haven't been able to come to campus due
				to the COVID-19 pandemic. Many of the current first-year and
				second-year students have never been on campus before, and the
				upper-year students may have not had the opportunity to explore the
				campus enough in their first or second year. In order to address the
				students�� unfamiliarity with the campus, the team proposes to create
				a consumer information website to help students find the best study
				spots on and around UofT��s St. George campus. In addition, this can
				aid students in finding new areas to meet for group meetings. 
				<br><br>
				The website will include a database of study spaces and their relevant
				specifications, such as location, accessibility, capacity, and noise
				level. Users will be able to provide reviews for each study spot and
				��favourite�� study spot locations. Through their account, they can
				view their account information and list the spots they have tried by
				leaving comments and ranking them using different categories to
				remember their experience. <br>
				<hr>
				<h2>Study Spot Picture</h2>
				<img src="img/rip.jpg" width="200"> <br />
				<br>
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>
