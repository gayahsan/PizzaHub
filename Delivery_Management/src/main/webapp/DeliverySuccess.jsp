<%@page import="art_Gallery.DeliveryCustomer"%>
<%@page import="art_Gallery.DeliveryDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Success retrieve page here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>



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
.confirmDelibtn {
	position: absolute;
	margin-top:-103px;
	margin-left: 343px;
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: -30px 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.upNew {
	position: absolute;
	margin-top: -87px;
	margin-left: 196px;
	
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.cancelDelibtn {
	position: absolute;
	margin-top: -135px;
	margin-left: 520px;
	
	border: 1px solid green;
	border: none;
	color: white;
	
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.deli4 {
	position: absolute;
	margin-top: -380px;
	margin-left: 798px;
}

.container {
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	border-radius: 5px; /* 5px rounded corners */
}

input[type=text], select {
	padding: 3px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	color:;
	margin: 8px 0;
	border:;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>


<script>
	function myFunction2() {
		location.replace("./DeliveryThankU.jsp")

	}
	function myFunction8() {
		location.replace("./DeliveryHomaPage.jsp")

	}
</script>



<script>
	function InsertValidation() {

		if (document.getElementById('Fname').value == "") {
			alert("Please Enter Full Name Before You Submit The Details");
			return false;
		}
		if (document.getElementById('addLineOne').value == "") {
			alert("Please Enter AddressLine 01 Before You Submit The Details");
			return false;
		}
		if (document.getElementById('addLineTwo').value == "") {
			alert("Please Enter AddressLine 02 Before You Submit The Details");
			return false;
		}
		if (document.getElementById('PostalCo').value == "") {
			alert("Please Enter Postal code Before You Submit The Details");
			return false;
		}
		if (document.getElementById('DeliveryPro').value == "") {
			alert("Please Enter Province Before You Submit The Details");
			return false;
		}
		if (document.getElementById('eliveryCityy').value == "") {
			alert("Please Enter City Before You Submit The Details");
			return false;
		}
		if (document.getElementById('DelivertCountry').value == "") {
			alert("Please Enter Country Before You Submit The Details");
			return false;
		}
	}
</script>

</head>
<body>
	<!-- header malshm -->
	<div class="header">
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



	<!-- data retrieve  test pass -->
	<%
	int pid = (int) request.getAttribute("pid");
	%>
	<%
	DeliveryCustomer d = DeliveryDBUtil.retriveDeliveryInfo(pid);
	%>


	<div class="container h-100">
		<h1>Delivery Details inserted Successfully</h1>
		<br>

		<table>
			<form action="Deliveyinsert" method="post">

				<tr>
					<td>Full Name</td>
					<td><input type="text" name="Fname"
						value="<%=d.getFull_name()%>" readonly></td>
				</tr>

				<tr>
					<td>Address Line 01</td>
					<td><input type="text" name="addLineOne"
						value="<%=d.getAdd_line_01()%>" readonly></td>
				</tr>

				<tr>
					<td>Address Line 02</td>
					<td><input type="text" name="addLineTwo"
						value="<%=d.getAdd_line_02()%>" readonly></td>
				</tr>

				<tr>
					<td>Postal Code</td>
					<td><input type="text" name="PostalCo"
						value="<%=d.getPostal_code()%>" readonly></td>
				</tr>

				<tr>
					<td>Province</td>
					<td><input type="text" name="DeliveryPro"
						value="<%=d.getProvince()%>" readonly></td>
				</tr>

				<tr>
					<td>City</td>
					<td><input type="text" name="eliveryCityy"
						value="<%=d.getCity()%>" readonly></td>
				</tr>

				<tr>
					<td>Country</td>
					<td><input type="text" name="DelivertCountry"
						value="<%=d.getCountry()%>" readonly></td>
				</tr>
		</table>
		<br>

		</form><br/><br/><br/>
	</div>

	<div class="#">
		<form method="post"
			action="<%=request.getContextPath()%>/DeliveryRetriveEditServlet">
			<input type="hidden" name="P_id" value="<%=d.getP_payment_id()%>">
			<div class="upNew">
				<input type="submit" name="submit" value="Update My Data"
					style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;">
			</div>
		</form>
		</br>

		<!-- Delete part Start-->
		<c:forEach var="cus " items="${DeliCusDetails}">

			<c:set var="Did" value="${cus.delivery_id}" />
			<c:set var="DFname" value="${cus.full_name}" />
			<c:set var="lineOne" value="${cus.add_line_01}" />
			<c:set var="lineTwo" value="${cus.add_line_02}" />
			<c:set var="PCode" value="${cus.postal_code}" />
			<c:set var="Dprovince" value="${cus.province}" />
			<c:set var="Dcity" value="${cus.city}" />
			<c:set var="Dcountry" value="${cus.country}" />
			<c:set var="Dstatus" value="${cus.status}" />
			<c:set var="DPId" value="${cus.p_payment_id}" />

		</c:forEach>

		<!--Delete Button  -->
		<c:url value="DeliveryDelete.jsp" var="deliDelete">

			<c:param name="DeliID" value="${Did}" />
			<c:param name="dfname" value="${DFname}" />
			<c:param name="lineone" value="${lineOne}" />
			<c:param name="linetwo" value="${lineTwo}" />
			<c:param name="dpcode" value="${PCode}" />
			<c:param name="dprovi" value="${Dprovince}" />
			<c:param name="dcity" value="${Dcity}" />
			<c:param name="dcontry" value="${Dcountry}" />
			<c:param name="dstatus" value="${Dstatus}" />
			<c:param name="dpid" value="${DPId}" />
		</c:url>

		<!--Delete part Start	-->
		<form method="post" action="DeliveryDeleteServelet">
			<div class="cancelDelibtn">
				<input type="hidden" id="Fname" name="P_id"
					value="<%=d.getP_payment_id()%>"> <br> <input
					type="submit" name="submit" value="Cancel My Delivery"
					style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;"
					onclick="return confirm('Are you sure you want to delete this informations?');">
			</div>
		</form>
		<!--Delete part End	-->



		<!--Confirm button part start-->
		<div class="confirmDelibtn">
			<button
				style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;"
				onclick="myFunction2()">Confirm My Delivery</button>
			<br>
		</div>
		<!--Confirm button part end-->
	</div>

	<div class="deli4">
		<img src="photos/deli4.jpg" alt="...">
	</div>



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