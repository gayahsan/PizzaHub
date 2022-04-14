<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>


	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<!-- header css js malshan -->
<style>
.header {
	background-image: url("photos/headerImg2.jpeg");
	background-repeat: no-repeat;
	background-size: cover;
	height: 150px;
}

.container {
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	border-radius: 5px; /* 5px rounded corners */
}

body {
	background-image: url("photos/bacground.jpeg");
	background-repeat: repeat;
}

#navbar {
	overflow: hidden;
	background-color: #99973f;
	z-index: 2;
}

#navbar a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

#navbar a:hover {
	background-color: #f7eb65;
	color: black;
}

#navbar a.active {
	background-color: #04AA6D;
	color: white;
}

.sticky {
	position: fixed;
	top: 0;
	width: 100%;
}

.sticky+.content {
	padding-top: 70px;
}

.searchBar {
	float: right;
	padding: 6px;
	margin-top: 8px;
	margin-right: 16px;
	border: none;
	border-radius: 5px;
	font-size: 17px;
}
</style>

<script>
	window.onscroll = function() {
		myFunction()
	};

	var navbar = document.getElementById("navbar");
	var sticky = navbar.offsetTop;

	function myFunction() {
		if (window.pageYOffset >= sticky) {
			navbar.classList.add("sticky")
		} else {
			navbar.classList.remove("sticky");
		}
	}
</script>
<!-- end of header css js malshan -->

<style>
.repoBTN {
	position: absolute;
	margin-top: 3px;
	margin-left: 3px;
}
</style>

</head>
<body>

	<!-- header malshm -->
	<div class="header ">
		<img src="photos/pizHub.jpeg"
			style="float: left; height: 130px; width: 200px;">
		<div class="headertxt">
			<h2 class="headertxt1"
				style="position: absolute; margin-top: 10px; margin-left: 996px; font-size: 200%; color: white;">Pizza
				Hub</h2>
			</br>
			<h4 class="headertxt2"
				style="position: absolute; margin-top: 20px; margin-left: 960px; font-size: 150%; color: white;">We
				have excellent quality of pizza</h4>
		</div>
	</div>

	<div id="navbar">
		<a href="Home.jsp">Home</a> <a href="javascript:void(0)">Menu</a> <a
			href="javascript:void(0)">Order Now</a> <a href="javascript:void(0)">Contact</a>
		<input class="searchBar" type="text" placeholder="Search..">
	</div>
	</br>

	<!--/ header -->



	<div id="content">

		<%@ page import="java.sql.ResultSet"%>
		<%@ page import="java.sql.Statement"%>
		<%@ page import="java.sql.Connection"%>
		<%@ page import="java.sql.DriverManager"%>

		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
			String username = "root";
			String password = "root";

			//String query="select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";

			Connection conn = DriverManager.getConnection(url, username, password);
			Statement stmt = conn.createStatement();

			String query_1 = " Select *  from delivery ";

			ResultSet rs_2 = stmt.executeQuery(query_1);
		%>
		<div class="container">

			<h1><center>Generate a Monthly Delivery Report</center></h1>
			<br>
			<center>	
				<table border="5">
					<tr>
						<th>Full name</th>
						<th>line01</th>
						<!-- <th>line02</th> -->
						<th>postalcode</th>
						<th>province</th>
						<th>city</th>
						<th>country</th>

					</tr>
					<%
					while (rs_2.next()) {
					%>
					<tr>
						<td><%=rs_2.getString("full_name")%></td>
						<td><%=rs_2.getString("add_line_01")%></td>
						<%-- <td><%=rs_2.getString("add_line_02")%></td> --%>
						<td><%=rs_2.getString("postal_code")%></td>
						<td><%=rs_2.getString("province")%></td>
						<td><%=rs_2.getString("city")%></td>
						<td><%=rs_2.getString("country")%></td>
					</tr>

					<%
					} //end of while
					%>
				</table>
			</center>

			<br> <br>
			<div class="container h-100">
			<center>
				<button style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;" onclick="generate_PDF();">Generate a Report</button>
				</center>
			</dfn>
			</div></br>
		</div></br>
		<%
		rs_2.close();
		stmt.close();
		conn.close();
		}

		catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</div>

	<div id="elementH"></div>

	<!-- jQuery library -->
	<script src="js/jquery.min.js"></script>

	<!-- jsPDF library -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

	<!-- <script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script> -->

	<!-- <script src="js/jsPDF/dist/jspdf.min.js"></script> -->

	<script type="text/javascript">
		function generate_PDF() {

			var doc = new jsPDF();
			var elementHTML = $('#content').html();

			var specialElementHandlers = {
				'#elementH' : function(element, renderer) {
					return true;
				}
			};

			doc.fromHTML(elementHTML, 30, 15, {
				'width' : 700,
				'elementHandlers' : specialElementHandlers
			});

			// Save the PDF
			doc.save('sample-document.pdf');

		}
	</script>
	
	
	
	
	
	
	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class=" p-4">
			<!-- Section: Social media -->
			<section class="mb-4">

				<!-- Facebook -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-facebook"
					href="#!" role="button"></a>
				<!-- Twitter -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-twitter"
					href="#!" role="button"></a>
				<!-- Google -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-google"
					href="#!" role="button"></a>
				<!-- Instagram -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-instagram"
					href="#!" role="button"></a>
				<!-- Linkedin -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-linkedin"
					href="#!" role="button"></a>
			</section>
			<!-- Section: Social media -->

			<!-- Section: Form -->
			<section class="">
				<form action="">
					<!--Grid row-->
					<div class="row d-flex justify-content-center">
						<!--Grid column-->
						<div class="col-auto">
							<p class="pt-2">
								<strong>Sign up for our newsletter</strong>
							</p>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-md-5 col-12">
							<!-- Email input -->
							<div class="form-outline form-white mb-4">
								<input type="email" id="form5Example21" class="form-control" />
								<label class="form-label" for="form5Example21">Email
									address</label>
							</div>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-auto">
							<!-- Submit button -->
							<button type="submit" class="btn btn-outline-light mb-4">
								Subscribe</button>
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
				</form>
			</section>
			<!-- Section: Form -->

			<!-- Section: Text -->
			<section class="mb-4">
				<p>Since its inception in 1993, Pizza Hub has fast become a
					household name across Sri Lanka. With its first restaurant at Union
					Place, Colombo 2, Pizza Hub became the first international
					restaurant chain to begin operations in Sri Lanka.</p>
			</section>
			<!-- Section: Text -->

			<!-- Section: Links -->
			<section class="">
				<!--Grid row-->
				<div class="row">
					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Order Now</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">PROMOS</a></li>
							<li><a href="#!" class="text-white">PIZZAS</a></li>
							<li><a href="#!" class="text-white">PASTAS</a></li>
							<li><a href="#!" class="text-white">APPETIZERS</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">About</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">CAREERS</a></li>
							<li><a href="#!" class="text-white">FEEDBACK</a></li>
							<li><a href="#!" class="text-white">HOTLINE</a></li>
							<li><a href="#!" class="text-white">BEVERAGES</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Policy</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">DESSERTS</a></li>
							<li><a href="#!" class="text-white">TERMS & CONDITIONS</a></li>
							<li><a href="#!" class="text-white"> Social Media</a></li>
							<li><a href="#!" class="text-white">items </a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">My Pizza Hub</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">SIGN IN / REGISTER</a></li>
							<li><a href="#!" class="text-white">Find Us</a></li>
							<li><a href="#!" class="text-white">logos</a></li>
							<li><a href="#!" class="text-white">Chicken</a></li>
						</ul>
					</div>
					<!--Grid column-->
				</div>
				<!--Grid row-->
			</section>
			<!-- Section: Links -->
		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			® 2022 PizzaHuB, Inc. All rights reserved. <a class="text-white"
				href="https://mdbootstrap.com/"></a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
	
</body>
</html>