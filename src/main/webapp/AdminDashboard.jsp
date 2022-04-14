<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<style>
.icon-bar {
  width: 100%;
  background-color:#f2f2f0;
  overflow: hidden;
  position: fixed;
  height: 50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.searchM{width: 55%;float: left;height: 50px; background-color:#f1f1f1; border: none; color:color:black; padding-left:15px; }
.notiM{ width: 10%;float: left; height: 50px; padding-left:20px;background-color:#f1f1f1;color:black; padding-top: 10px;}
.msgM{ width: 10%;float: left; height: 50px; padding-left:20px;background-color:#f1f1f1;color:black; padding-top: 10px;}
.lgoutbtnM{ width: 25%;float: left; height: 50px; padding-left:20px;background-color:#999696;color:#c9c6c5; padding-top: 10px;}
.lgoutbtnM:hover{ background-color:#c9c6c5;color:#999696; }

.icon-bar a {
  text-align: center;
  transition: all 0.3s ease;
  color: black;
  font-size: 18px;
  text-decoration: none;
}

.sidebarG1{ margin-top: 20px;}

body {background-color: #f7f7f7;
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  width: 200px;
  background-color:#e6e3e3;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.adminlogo{
	width: 50px; height: 40px;
}

.adminlogo2{
	width: 50px; height: 40px; margin-bottom: 10px;
}

#myBtn{
	margin-right: -250px;
}
.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.content {
  margin-left: 200px;
  height: auto;
}

.Bodycont{ padding-top: 60px; 
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
 

.sidebar a {float: left;}
div.content {margin-left: 0;}
}





/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 50%; height:150px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

/* The Close Button */
.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color:#ff001e;
  color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;;
  color: white;
}

.cancelbtn{
	width: 100px;
}

.lgoutbtn{
	width: 100px;
}
.cl{ background-color: white ; padding: 15px 5px 15px 5px; border-radius: 10px; 
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.15);
}

</style>
<title>Admin Dashboard</title>
</head>
<body>


<div class="sidebar">
  <div style="height: 60px;padding-top: 10px;"><img class="adminlogo" src="Images/admin logo.png">  Administrator</div>
  <div class="sidebarG1">
  <a class="active" href="#!"><i class='fas fa-home' style='font-size:20px;color:black'></i>  Dashboard</a>
  <a href="AddItem.jsp"><i class='far fa-plus-square' style='font-size:20px;color:blue'></i> Add Items</a>
  <a href="#"><i class='fas fa-search' style='font-size:20px;color:green'></i> Search Items</a>
  <a href="ViewItems.jsp"><i class='fas fa-table' style='font-size:20px;color:brown'></i> View Items</a>
  <a href="#"><i class='fas fa-download' style='font-size:20px;color:black'></i> Generate Report</a>
  </div>
  
</div>

<div class="content">
	<div class="icon-bar">
	  <div class="searchM" ></div>
	  <a class="notiM" href="#"><i class="material-icons" style="font-size:25px">notifications</i><span class="badge">8</span></a>
	  <a class="msgM" href="#"><i class="material-icons" style="font-size:25px">chat</i><span class="badge">3</span></a>
	  <div id="myBtn" class="lgoutbtnM"><a href="#"> Log out</a></div> 
	</div>
	<div class="Bodycont">
		<div class="container">
	  		<div class="row">
	   			 <div class="col-9" style="margin-bottom: 60px; text-align: center;">
						
				 </div>
	    			<div class="col-5 cl">
	    				<label>Deliveries</label>
	    				<canvas id="myChartline" style="width:100%;max-width:600px"></canvas>
	    			</div>
	    		<div class="col-6 cl" style="margin-left: 60px;">
						<canvas id="myChartbar" style="width:100%;max-width:600px"></canvas>
				</div>
	  		</div>
		</div>
</div>
</div>




<!-- The Modal -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <h2>Log out</h2>
    </div>
    <div class="modal-body">
      <p>Are you sure you want to log out?</p>
    </div>
    <div class="modal-footer">
        <button type="button" onclick="document.getElementById('myModal').style.display='none'" class="btn btn-secondary cancelbtn">Cancel</button>
        <button type="button" onclick="document.location='Home.jsp'" class="btn btn-danger lgoutbtn">Log out</button>
    </div>
  </div>

</div>


<script>

//bar graph
var xValues = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday" ,"Saturday" , "Sunday"];
var yValues = [55, 49, 44, 24, 15,25,40];
var barColors = ["red", "green","blue","orange","brown","yellow","grey"];

new Chart("myChartbar", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Weekly Orders"
    }
  }
});



//Line Graphs
var xValues = [50,60,70,80,90,100,110,120,130,140,150];
var yValues = [7,8,8,9,9,9,10,11,14,14,15];

new Chart("myChartline", {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{
      fill: false,
      lineTension: 0,
      backgroundColor: "rgba(0,0,255,1.0)",
      borderColor: "rgba(0,0,255,0.1)",
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    scales: {
      yAxes: [{ticks: {min: 6, max:16}}],
    }
  }
});

// Get the modal
var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];

btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>

</html>