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
				<h1 class="Heading">Manager Log In</h1>
			</div>







			<form method="post" action="log">

				<table class="tabl">

					<tr>
						<td>Staff ID :</td>
						<td><input type="text" name="sid"></td>
						<td rowspan="7"><img src="images/profilepic.jpg"
							alt="Profile Picture"></td>
					</tr>


					<tr>
						<td>Password :</td>
						<td><input type="password" name="pw"></td>


					</tr>
					<tr>
						<td><input type="submit" name="submit" value="login">
						</td>


					</tr>


				</table>

			</form>

		</div>
	</div>





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