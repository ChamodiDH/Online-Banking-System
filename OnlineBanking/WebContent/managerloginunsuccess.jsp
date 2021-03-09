<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/LOGIN.css">
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/profile.css">

<title>Online Bank</title>

<style >

.myButton {
	box-shadow: inset 0px 1px 0px 0px #e184f3;
	background-color: #c123de;
	border-radius: 6px;
	border: 1px solid #a511c0;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #9b14b3;
}

.myButton:hover {
	background-color: #a20dbd;
}

.myButton:active {
	position: relative;
	top: 1px;
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
				<h1 class="Heading">Invalid login</h1>
			</div>

			<a href="managerlogin.jsp" class="myButton">Back</a><br><br><br><br><br><br><br><br><br>
			
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