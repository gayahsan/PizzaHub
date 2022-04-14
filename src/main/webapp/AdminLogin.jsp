<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Admin Login</title>
<style>
body {font-family: Arial, Helvetica, sans-serif; background-image: url("Images/food-3309418_1920.jpg");
}
.buttonL {
  background-color: black;
  color: white;
  cursor: pointer;
  width: 400px;
  height:80px;
  border:1px solid black;
  border-radius:5px;
  font-size: 25px;
  
}

.buttonL:hover {
  background-color:Black;
  color:  #d4ff00; opacity: 0.8;
}


.btnhm {
border: none;
  cursor: pointer;
  width:100%; color:white;
}



.btnhm:hover{
opacity: 0.8;
}




/* Extra styles for the cancel button */
.cancelbtn {
border: none;
  cursor: pointer;
  width: auto;
  padding: 10px 18px;
  background-color: #f44336; color:white;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 100px; height: 100px;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px; }

/* Modal Content/Box */
.modal-content {border-radius: 10px;
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
 
   .cancelbtn:hover {
      opacity: 0.8;
  }
 
}

.cnt{margin-top:200px;
text-align: center;
}



.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  border: 1px solid dodgerblue;
}

.input-field:focus {
  border: 1px solid dodgerblue;
}

/* Set a style for the submit button */
.btnlg {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body>
<button class="btn btn-secondary btn-lg btnhm" onclick="document.location='Home.jsp'">
			Home <i class="fa fa-home" style="font-size:18px"></i></button>
<div class="cnt">
<h1 style="color:white;">Admin Login</h1>
<button class="buttonL" onclick="document.getElementById('id01').style.display='block'" >Login</button>

</div>

<div id="id01" class="modal">
  
  <form action="AdminLoginServlet" method="post" class="modal-content animate" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="Images/adminAvatar.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
    	<div class="input-container">
    		<i class="fa fa-user icon"></i>
   			<input type="text" class="input-field" placeholder="Enter Username" name="uname" required>
		</div>
		
	<div class="input-container">
    	<i class="fa fa-key icon"></i>
    	<input class="input-field" type="password" placeholder="Password" name="pswd">
     </div>   
      <button type="submit" class="btnlg">Login</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw"><a href="#">Forgot password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}




</script>

</body>
</html>
