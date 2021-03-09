<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/LOGIN.css">
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/profile.css">
<title>Online Bank</title>

<style>
table {
	border-collapse: collapse;
	border: 1px solid black;
	background-color: #40E0D0;
}

tr:hover {
	background-color: #FFF5EE;
}

th, td {
	font-size: 20px;
}

tr:nth-child(even) {
	background-color: #20B2AA;
}

.tdc {
	color: #00008B;
}

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

.myButton2 {
	box-shadow: inset 0px 1px 0px 0px #fff6af;
	background: linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	background-color: #ffec64;
	border-radius: 6px;
	border: 1px solid #ffaa22;
	display: inline-block;
	cursor: pointer;
	color: #333333;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffee66;
}

.myButton2:hover {
	background: linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	background-color: #ffab23;
}

.myButton2:active {
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
				<h1 class="Heading">Profile</h1>
			</div>

			<div align="center">
				<img src=images/profilepic.jpg>
			</div>

			<table>


				<c:forEach var="man" items="${manDetails}">
					<c:set var="staffid" value="${man.staffId}" />
					<c:set var="firstname" value="${man.firstname}" />
					<c:set var="lastname" value="${man.lastname}" />
					<c:set var="email" value="${man.email}" />
					<c:set var="password" value="${man.password}" />

					<tr>
						<td class="tdc">Manager ID</td>
						<td>${man.staffId}</td>
					</tr>
					<tr>
						<td class="tdc">Firstname</td>
						<td>${man.firstname}</td>
					</tr>

					<tr>
						<td class="tdc">Lastname</td>
						<td>${man.lastname}</td>
					</tr>
					<tr>
						<td class="tdc">email</td>
						<td>${man.email}</td>
					</tr>
					<tr>
						<td class="tdc">Password</td>
						<td>${man.password}</td>
					</tr>
				</c:forEach>

			</table>

			<c:url value="managerupdate.jsp" var="manupdate">
				<c:param name="sid" value="${staffid}" />
				<c:param name="fname" value="${firstname}" />
				<c:param name="lname" value="${lastname}" />
				<c:param name="email" value="${email}" />
				<c:param name="pass" value="${password}" />

			</c:url>
			<a href="${manupdate}" class="myButton2"> Update Profile </a> 
			
				<a href="manager.jsp" class="myButton">Back</a>



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