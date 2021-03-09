<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/LOGIN.css">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/profile.css">
<title>Online Bank</title>
<style>
.myButton {
	box-shadow: 0px 10px 14px -7px #276873;
	background: linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	background-color: #599bb3;
	border-radius: 8px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 20px;
	font-weight: bold;
	padding: 14px 32px;
	width: 50%;
	text-decoration: none;
	text-shadow: 0px 1px 0px #3d768a;
}

.myButton:hover {
	background: linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
	background-color: #408c99;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.button {
	border-radius: 4px;
	background-color: #f4511e;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 20px;
	width: 200px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
</style>
</head>

<body onload="startTime()">

	<div class="top">
		<img src="images/logo.png" alt="LOGO" height="150" width="250"
			class="toplogo">
		<h1 id="topheding">
			Trust Nation <br> Banking system
		</h1>
		<div class="login">
			<ul>
				<li class="clearfix"><a href='home.html'>Switch User</a>
				<li>
		</div>
		<ul>
	</div>

	<br>
	<hr size=5 color="black" id="hr1">

	<div id='cssmenu'>
		<ul>

			<li><a href="#">About us</a></li>
			<li><a href="#">Help</a></li>
			<li><a href="#">Reports</a></li>
		</ul>
	</div>

	<hr color="black">


	<hr color="black">

	<div class="middle">
	
		<div align="center">
			<div>
				<h1 class="Heading">Manager</h1>

			</div>

			<div align="center">
				<form method="post">
					<input type="submit" name="button1" value="Profile"
						formaction="viewing" class="myButton">
				</form>
				<br>
				<form method="post">
					<input type="submit" name="button4" value="Task List"
						formaction="viewtask" class="myButton">
				</form>
				<br>
				<form>
					<a href="manageruploadreport.jsp" class="myButton">Upload
						Reports</a>
				</form>
				<br> <br>
				<form>
					<a href="managerviewreport.jsp" class="myButton">View Reports</a>
				</form>
				<br>

			</div>

			Today's date:
			<%=(new java.util.Date()).toLocaleString()%>

			<div class="ftr">

				<footer>

					<p ID="cpr">Copyright 2020 © CRHT Team Presents. All Rights
						Reserved</p>

					<ul class="footerlink clearfix ">


						<li><a href="feedback - Emp.html">Feedback</a></li>
						<li><a href="contactUs-Emp.html">Contact Us</a></li>

					</ul>


				</footer>
			</div>


			<hr>
</body>
</html>