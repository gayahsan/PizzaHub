<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String itemID = request.getParameter("itemID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pizzahub_db";
String userid = "root";
String password = "root123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link href="./Styles/Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<script src="./Styles/Semantic-UI-CSS-master/semantic.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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

body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  width: 215px;
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
  padding: 1px 16px;
  height: auto;
  background-color: white;
}

.Bodycontent{
margin-top: 80px;
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

.modal-body {padding: 2px 16px;;}

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


/*  body*/
.formBody{
margin: 20px 40px 100px 40px;
	width: auto;
	height: auto;
}

.bdform {
	
	background-color: white;
	opacity: 0.8;
	width: 60%;
	border: 2px solid black;
	border-radius: 10px;
	color: black;
}

.lbl {
	font-weight: 500;
}

.inpt {
	border: 1px outset silver;
}

.inptimg{
	border: 1px outset silver; padding-bottom: 35px;
}

.updt{ color: #0010bd; }
.updt:hover{ text-decoration: none;opacity: 0.8;color: #2c3bde;}
.dlt{ color: #bd0000;}
.dlt:hover{ text-decoration: none;opacity: 0.8;color: #de2c2c;}

/* Pagination links */
.pagination {border-radius:10px;
background-color:white;
  left:70px;
  bottom:15px;
}


.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
}

/* Style the active/current link */
.pagination a.active {
  background-color: dodgerblue;
  color: white;
}
.addedImg{ height: 100px; width: 100px; border: 1px solid black; }
.addedImg:hover{ -ms-transform: scale(2); /* IE 9 */
  -webkit-transform: scale(2); /* Safari 3-8 */
  transform: scale(2);transition-duration: 3s; }
/* Add a grey background color on mouse-over */
.pagination a:hover:not(.active) {background-color: #ddd;}


#myBtn2 {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn2:hover {
  background-color: #555;
}


</style>
<title>All items</title>
</head>
<body>
<button onclick="topFunction()" id="myBtn2" title="Go to top">Top</button>
<div class="sidebar">
  <div style="height: 60px;padding-top: 10px;"><img class="adminlogo" src="Images/admin logo.png">  Administrator</div>
  <div class="sidebarG1">
  <a href="AdminDashboard.jsp"><i class='fas fa-home' style='font-size:20px;color:black'></i>  Dashboard</a>
  <a href="AddItem.jsp"><i class='far fa-plus-square' style='font-size:20px;color:blue'></i> Add Items</a>
  <a href="#"><i class='fas fa-search' style='font-size:20px;color:green'></i> Search Items</a>
  <a class="active" href="ViewItems.jsp"><i class='fas fa-table' style='font-size:20px;color:brown'></i> View Items</a>
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
	<div class="Bodycontent">
	<h3>All Items</h3>
	<!-- <input class="searchBar" type="text" placeholder="Search.."> -->
		<div class="formBody">
		<table class="table table-striped tblS" >
				<thead>
					<tr>
						<th>Item Code</th>
						<th>Item Name</th>
						<th >Description</th>
						<th>Category</th>
						<th>Price</th>
						<th>Image</th>
						<th> </th>
						<th> </th>

					</tr>
				</thead>
				<%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from items";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
				<tr>
				<td style="max-width: 50px;"><%=resultSet.getString("itemID") %></td>
				<td style="max-width: 80px;"><%=resultSet.getString("itemName") %></td>
				<td style="max-width: 200px;"><%=resultSet.getString("itemDescription") %></td>
				<td style="word-wrap: break-word; max-width: 100px;"><%=resultSet.getString("itemCategory") %></td>
				<td style="max-width: 50px;"><%=resultSet.getString("itemPrice") %></td>
				<td style="max-width: 200px;"><img class="addedImg" src="Images/<%=resultSet.getString("itemImage") %>"></td>
				<td style="max-width: 90px;"><a class="updt" href="Update_fromI.jsp?itemID=<%=resultSet.getString("itemID")%>">Update <i class="fa fa-edit" style="font-size:16px"></i></a></td>
				<td style="max-width: 90px;"><a class="dlt" href="Delete_fromI.jsp?itemID=<%=resultSet.getString("itemID")%>">Delete <i class="fa fa-trash" style="font-size:16px"></i></a></td>
				</tr>
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				</table>
		</div>
		
<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a  href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <a href="#">&raquo;</a>
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

</body>
<script>

//Get the modal
var modal = document.getElementById("myModal");

//Get the button that opens the modal
var btn = document.getElementById("myBtn");

//Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

//When the user clicks the button, open the modal 
btn.onclick = function() {
modal.style.display = "block";
}

//When the user clicks on <span> (x), close the modal
span.onclick = function() {
modal.style.display = "none";
}

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
if (event.target == modal) {
 modal.style.display = "none";
}
}



//Get the button
var mybutton = document.getElementById("myBtn2");
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
</html>