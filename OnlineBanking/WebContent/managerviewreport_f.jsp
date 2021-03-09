<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="com.manager.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet" type="text/css" href="styles/LOGIN.css">
        <link rel="stylesheet"  type="text/css"  href="styles/profile.css">
        
        
        <title>Online Bank</title>
    </head>
    <body onload="startTime()">
    
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
		
	<hr color="black">
		
		
		<hr color="black">
		
		<div class="middle">		
		  <div align="center">
     <div>
         <h1 class="Heading">Report Upload</h1>
     </div>
    
   
        
        <%  
            String id=(request.getParameter("number"));
            
            Blob file = null;
            byte[ ] fileData = null ;

            try
            {    
                DBConnect dbconn=new DBConnect();
                Connection conn= dbconn.getConnection();
            
                String sqlString = "SELECT report FROM report WHERE number = '"+id+"'";
                Statement myStatement = conn.createStatement();
                
                ResultSet rs=myStatement.executeQuery(sqlString);
                
                if (rs.next()) 
                {
                    file = rs.getBlob("report");
                    fileData = file.getBytes(1,(int)file.length());
                } else 
                {
                    out.println("file not found!");
                    return;
                }
                
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "inline");
                response.setContentLength(fileData.length);
                
                OutputStream output = response.getOutputStream();
                output.write(fileData);
                
                output.flush();
                
            } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
        %>
        
        <br><br>
        <a href="manager.jsp">Go to Main Page...</a>  
        
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