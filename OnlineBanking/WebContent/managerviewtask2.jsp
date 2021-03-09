<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>
<html>
<head>
<link  rel="stylesheet" type="text/css" href="styles/LOGIN.css">
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet"  type="text/css"  href="styles/profile.css">


<title>Online Bank</title>
<style>

th, td {
    font-size: 20px;
  }
th{
   background-color:#00BFFF;
}
td{
   background-color:#251C5C;
   color:white;

}

.redButton {
	box-shadow:inset 0px 1px 0px 0px #f5978e;
	background-color:#f24537;
	border-radius:6px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #810e05;
}
.redButton:hover {
	background-color:#c62d1f;
}
.redButton:active {
	position:relative;
	top:1px;
}

.blueButton {
	box-shadow:inset 0px 1px 0px 0px #97c4fe;
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	background-color:#3d94f6;
	border-radius:6px;
	border:1px solid #337fed;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #1570cd;
}
.blueButton:hover {
	background:linear-gradient(to bottom, #1e62d0 5%, #3d94f6 100%);
	background-color:#1e62d0;
}
.blueButton:active {
	position:relative;
	top:1px;
}
.myButton {
	box-shadow:inset 0px 1px 0px 0px #e184f3;
	background-color:#c123de;
	border-radius:6px;
	border:1px solid #a511c0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #9b14b3;
}
.myButton:hover {
	background-color:#a20dbd;
}
.myButton:active {
	position:relative;
	top:1px;
}
        
.myButton2 {
	box-shadow:inset 0px 1px 0px 0px #fff6af;
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	background-color:#ffec64;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}


.myButton2:hover {
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	background-color:#ffab23;
}
.myButton2:active {
	position:relative;
	top:1px;
}




</style>


</head>
<body onload ="startTime()">
<div class="top" >
		<img src="images/logo.png" alt="LOGO" height="150" width="250" class="toplogo">
		<h1 id="topheding">Trust Nation <br> Banking system</h1>
		<div class="login">
		<ul> 
		<li class="clearfix"><a href='home.html'>Switch User</a><li>
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
<div align ="center">
 <table border="1" cellpadding="5" style ="background-color:#006699 " >
            <caption><h2>Task List</h2></caption>
            <tr>
                <th>Staff ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Duty</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="user" items="${taskDetails}">
                <tr>
                    <td><c:out value="${user.staffId}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.department}" /></td>
                    <td><c:out value="${user.duty}" /></td>
                   <td><form method="POST" action="managertaskedit.jsp">
				<input type="hidden" name="employeeID" value="${user.staffId}"/>
				 <input type="submit" value= "Edit" class="blueButton" /> 
				 </form></td>
				 <td><form method="POST" action="deletetask">
				<input type="hidden" name="employeeID" value="${user.staffId}"/>
				 <input type="submit" value= "Delete" class="redButton" /> 
				 </form></td>
                </tr>
            </c:forEach>
        </table><br><br>
        <a href ="manageraddtask.jsp" class ="myButton2">Add Task</a>
        <a href ="manager.jsp" class ="myButton">Back</a>
        </div>
        
        <div class="ftr">
  
  <footer >
            
			<p ID="cpr">Copyright 2020 © CRHT Team Presents. All Rights Reserved</p>
 
                <ul class="footerlink clearfix ">
				
				
				<li><a href="feedback - Emp.html">Feedback</a></li>
				<li><a href="contactUs-Emp.html">Contact Us</a></li>
				
			    </ul>
			
  
  </footer>
  </div>	
  
  
<hr>
</body>
</html>