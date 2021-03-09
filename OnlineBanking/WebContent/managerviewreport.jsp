<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.manager.DBConnect"%>

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
		</div><br><br><br>
		
		<div align ="center">

<table border="1" cellpadding="5" style ="background-color:#006699 " >
            
                <tbody>
                    <tr>
                        <th>Report NO</th><th>Report Name</th><th>Report</th>
                    </tr>
                    
                    <%
                    
                    
                        try
                    
                   
                        {
                        	 DBConnect dbconn=new DBConnect();
                             Connection myconnection= dbconn.getConnection();
                             
                             String sqlString = "SELECT * FROM report";
                             Statement myStatement = myconnection.createStatement();
                             ResultSet rs=myStatement.executeQuery(sqlString);
                             

                               
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                        <td><center><%out.print(rs.getString("number")); %></center></td>
                                        <td><center><%out.print(rs.getString("reportName")); %></center></td>
                                      
                                        <td><center><a href="managerviewreport_f.jsp?number=<%out.print(rs.getString("number"));%>" class ="blueButton">View</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table>
                            
                            <%
                               
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
                    
                    <a href ="manager.jsp" class ="myButton">Back</a>
                    
                    </div>
                    
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