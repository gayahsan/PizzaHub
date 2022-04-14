<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<style>
.header {
   background-image: url("Images/headerImg2.jpg");
   background-repeat: no-repeat;
  background-size: cover;
  height: 150px;
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

.sticky + .content {
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
/* /header */
</style>


<title>Home</title>
</head>
<body>
	<!-- header -->
<div class="header">
	<img src="Images/PizzaHubLogo-removebg.png" style="float:left; height: 130px; width: 200px;">
	<div class="headertxt">
	<h2 class="headertxt1">Pizza Hub</h2>
  	<p class="headertxt2">We have excellent quality of pizza</p>
	</div>
</div>

<div id="navbar">
  <a  href="Home.jsp">Home</a>
  <a href="javascript:void(0)">Menu</a>
  <a href="javascript:void(0)">Order Now</a>
  <a href="javascript:void(0)">Contact</a>
  <input class="searchBar" type="text" placeholder="Search..">
</div>

<!--/ header -->

	<div class="content">
		<form>
			<div class="form-group">
				<label for="exampleFormControlInput1">Email address</label> <input
					type="email" class="form-control" id="exampleFormControlInput1"
					placeholder="name@example.com">
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect1">Example select</label> <select
					class="form-control" id="exampleFormControlSelect1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect2">Example multiple
					select</label> <select multiple class="form-control"
					id="exampleFormControlSelect2">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleFormControlTextarea1">Example textarea</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3"></textarea>
			</div>
		</form>
	</div>




	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class="container p-4">
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

			<!-- Section: Text -->
			<section class="mb-4">
				<p>There's nothing cookie-cutter about Pizza Hub. Not our
					pizzas. Not our people. And definitely not the way we live life.
					Around here, we don't settle for anything less than food we're
					proud to serve.</p>
			</section>
			<!-- Section: Text -->

			<!-- Section: Links -->
			<section class="">
				<!--Grid row-->
				<div class="row" style="font-size: 12px;">
					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Order Now</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">PROMOS</a></li>
							<li><a href="#!" class="text-white">APPETIZERS</a></li>
							<li><a href="#!" class="text-white">DESSERTS</a></li>
							<li><a href="#!" class="text-white">BEVERAGES</a></li>
							<li><a href="#!" class="text-white">PASTAS</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">About</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">CAREERS</a></li>
							<li><a href="#!" class="text-white">ABOUT US</a></li>
							<li><a href="#!" class="text-white">FEEDBACK</a></li>
							<li><a href="#!" class="text-white">HOTLINE</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Policy</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">TERMS & CONDITIONS</a></li>
							<li><a href="#!" class="text-white">PRIVACY POLICY</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">My PizzaHub</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">Sign in</a></li>
							<li><a href="#!" class="text-white">Register</a></li>
							<li><a href="AdminLogin.jsp" class="text-white">Admin</a></li>
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
			<a class="text-white" href="#">2022 Pizza Hub, Inc. All rights
				reserved</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
</body>
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

</html>