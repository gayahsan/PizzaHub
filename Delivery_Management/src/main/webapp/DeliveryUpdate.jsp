<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="art_Gallery.DeliveryCustomer"%>
<%@page import="art_Gallery.DeliveryDBUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Update here</title>
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
	background-image: url("photos/pizza-blck2.jpg");
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
	background-color: #010101ba;
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
.container {
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	border-radius: 5px; /* 5px rounded corners */
}

.deli8 {
	position: absolute;
	margin-top: -403px;
	margin-left: 557px;
}

input[type=text], select {
	padding: 5px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 39%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>

<script>
	function InsertValidation() {

		if (document.getElementById('Fname').value == "") {
			alert("Please Enter The Name Which You Want to Update");
			return false;
		}
		if (document.getElementById('addLineOne').value == "") {
			alert("Please Enter AddressLine 01");
			return false;
		}
		if (document.getElementById('addLineTwo').value == "") {
			alert("Please Enter AddressLine 02");
			return false;
		}
		if (document.getElementById('PostalCo').value == "") {
			alert("Please Enter Postal code");
			return false;
		}
		if (document.getElementById('DeliveryPro').value == "") {
			alert("Please Enter Province");
			return false;
		}
		if (document.getElementById('eliveryCityy').value == "") {
			alert("Please Enter City");
			return false;
		}
		if (document.getElementById('DelivertCountry').value == "") {
			alert("Please Enter Country");
			return false;
		}
	}
</script>
</head>
<body>

	<%
	DeliveryCustomer d = (DeliveryCustomer) request.getAttribute("ObDeli");
	%>
	<!-- header malshm -->
	<div class="header">
		<img src="photos/pizHub.jpeg"
			style="float: left;  height: 130px; width: 200px; border-radius: 25px;  padding: 15px;">
		
	</div>

	<div id="navbar">
		<a href="Home.jsp">Home</a> <a href="javascript:void(0)">Menu</a> <a
			href="javascript:void(0)">Order Now</a> <a href="javascript:void(0)">Contact</a>
		<input class="searchBar" type="text" placeholder="Search..">
	</div>
	</br>

	<!--/ header -->

	<div class="container h-100">
		<h1>Please Update The Details</h1>
		</br>
		<div class="tbleWitw"></div>
		<table>
			<form action="<%=request.getContextPath()%>/DeliveryUpdateServlet"
				method="post" onsubmit="return InsertValidation()">

				<tr>
					<td>Full Name</td>
					<td><input type="text" name="Fname" id="Fname"
						value="<%=d.getFull_name()%>" ></td>
				</tr>

				<tr>
					<td>Address Line 01</td>
					<td><input type="text" name="addLineOne"
						value="<%=d.getAdd_line_01()%>"  required></td>
				</tr>

				<tr>
					<td>Address Line 02</td>
					<td><input type="text" name="addLineTwo"
						value="<%=d.getAdd_line_02()%>"  required></td>
				</tr>


				<tr>
					<td>Postal Code</td>
					<td><input type="text" name="PostalCo"
						value="<%=d.getPostal_code()%>" pattern="[0-9]{5}"
						placeholder="Eg: 12378" required></td>
				</tr>

				<tr>
					<td>Province</td>
					<td><input type="text" name="DeliveryPro"
						value="<%=d.getProvince()%>"  required></td>
				</tr>

				<tr>
					<td>City</td>
					<td><input type="text" name="eliveryCityy"
						value="<%=d.getCity()%>"  required></td>
				</tr>

				<tr>
					<td>Country</td>
					<td><input type="text" name="DelivertCountry"
						value="<%=d.getCountry()%>"  required></td>
				</tr>
				<!--hidden values  -->
				<input type="hidden" name="d_id" value="<%=d.getDelivery_id()%>">
				<input type="hidden" name="p_id" value="<%=d.getP_payment_id()%>">
		</table>
		<br> <input type="submit" name="submit" value="Update details">
		</form>
		<div class="deli8">
			<img src="photos/deli8.jpg" alt="...">
		</div>
	</div>

	</div>
	</br>
	</br>





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
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt
					distinctio earum repellat quaerat voluptatibus placeat nam, commodi
					optio pariatur est quia magnam eum harum corrupti dicta, aliquam
					sequi voluptate quas.</p>
			</section>
			<!-- Section: Text -->

			<!-- Section: Links -->
			<section class="">
				<!--Grid row-->
				<div class="row">
					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Links</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">Link 1</a></li>
							<li><a href="#!" class="text-white">Link 2</a></li>
							<li><a href="#!" class="text-white">Link 3</a></li>
							<li><a href="#!" class="text-white">Link 4</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Links</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">Link 1</a></li>
							<li><a href="#!" class="text-white">Link 2</a></li>
							<li><a href="#!" class="text-white">Link 3</a></li>
							<li><a href="#!" class="text-white">Link 4</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Links</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">Link 1</a></li>
							<li><a href="#!" class="text-white">Link 2</a></li>
							<li><a href="#!" class="text-white">Link 3</a></li>
							<li><a href="#!" class="text-white">Link 4</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Links</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">Link 1</a></li>
							<li><a href="#!" class="text-white">Link 2</a></li>
							<li><a href="#!" class="text-white">Link 3</a></li>
							<li><a href="#!" class="text-white">Link 4</a></li>
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
			© 2020 Copyright: <a class="text-white"
				href="https://mdbootstrap.com/">MDBootstrap.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
</body>
</html>