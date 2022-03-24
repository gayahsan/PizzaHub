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

<style>
.deli8 {
	position: absolute;
	margin-top: -351px;
	margin-left: 702px;
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
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">PizzaHUBS</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-expanded="false">
						Dropdown </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled">Disabled</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-dark" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container h-100">
		<h1>Please Update The Details</h1>
		</br>
		<table>
			<form action="<%=request.getContextPath()%>/DeliveryUpdateServlet"
				method="post" onsubmit="return InsertValidation()">

				<tr>
					<td>Full Name</td>
					<td><input type="text" name="Fname" id="Fname"
						value="<%=d.getFull_name()%>" placeholder="Eg: Thusi Alia"></td>
				</tr>

				<tr>
					<td>Address Line 01</td>
					<td><input type="text" name="addLineOne"
						value="<%=d.getAdd_line_01()%>" placeholder="Eg: Road" required></td>
				</tr>

				<tr>
					<td>Address Line 02</td>
					<td><input type="text" name="addLineTwo"
						value="<%=d.getAdd_line_02()%>" placeholder="Eg: Gampaha" required></td>
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
						value="<%=d.getProvince()%>" placeholder="Eg: Westen" required></td>
				</tr>

				<tr>
					<td>City</td>
					<td><input type="text" name="eliveryCityy"
						value="<%=d.getCity()%>" placeholder="Eg: Gampaha" required></td>
				</tr>

				<tr>
					<td>Country</td>
					<td><input type="text" name="DelivertCountry"
						value="<%=d.getCountry()%>" placeholder="Eg: Sri Lanka" required></td>
				</tr>
				<!--hidden values  -->
				<input type="hidden" name="d_id" value="<%=d.getDelivery_id()%>">
				<input type="hidden" name="p_id" value="<%=d.getP_payment_id()%>">
		</table>
		<br> <input type="submit" name="submit" value="Update details">
		</form>
	</div>
	</br>
	</br>

	<div class="deli8">
		<img src="photos/deli8.jpg" alt="...">
	</div>



	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class="container p-4">
			<!-- Section: Social media -->
			<section class="mb-4">
				<!-- Facebook -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-facebook-f"></i></a>

				<!-- Twitter -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-twitter"></i></a>

				<!-- Google -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-google"></i></a>

				<!-- Instagram -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-instagram"></i></a>

				<!-- Linkedin -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-linkedin-in"></i></a>

				<!-- Github -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-github"></i></a>
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