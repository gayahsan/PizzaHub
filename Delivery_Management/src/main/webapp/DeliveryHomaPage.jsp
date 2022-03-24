<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Home here</title>

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

</head>
<body>

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



	<div class="myDiv1">
		<h1>
			<b><center>PLEASE SELECT YOUR DELIVERY OPTION</center></b>
		</h1>




	</div>

	<div class="myDiv2"></div>












	<div class="container h-100">

		<!-- cards -->
		</br> </br>
		<div class="card-deck">
			<div class="card">
				<div class="img">

					<img src="photos/SHOP.jpg" alt="...">
				</div>
				<div class="card-body">
					<h5 class="card-title">Takeaway Option</h5>
					<p class="card-text">Offer pickup as an option for orders
						arranged through our app. Customers will avoid delivery charges,
						and your business will incur a lower commission rate without
						network fees.</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">Last updated 3 mins ago</small> <br>
					<center>
						<button onclick="myFunction2()">CONTACT US</button>
					</center>
					<br>

					<script>
		function myFunction2() {
		  location.replace("./DeliveryPersonalyPicIt.jsp")
		  
		}
	</script>
				</div>
			</div>


			<div class="card">
				<div class="img">

					<img src="photos/DELI.jpg" alt="...">
				</div>

				<div class="card-body">
					<h5 class="card-title">Home Delivery Option</h5>
					<p class="card-text">Access a network of over 5 million
						delivery people worldwide with delivery times averaging less than
						30 minutes. All you have to do is prepare customer orders.</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">Last updated 3 mins ago</small> <br>
					<center>
						<button onclick="location.href = 'DeliveryHomeIns'">GET
							HOME DELIVERY</button>
					</center>
					<br>

					<script>
		function myFunction1() {
		  location.replace("./DeliveryInsert.jsp")
		  
		}
	</script>
				</div>
			</div>

		</div>
		</br> </br>

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