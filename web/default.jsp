<%-- 
    Document   : default
    Created on : 29-Jul-2022, 01:50:25
    Author     : seanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<?xml version = "1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict/dtd">


<%-- META data for HTML head and formatting --%> 

<%-- overall import of SQL functionality for JSP file and usage, primarily added as a catch all --%> 
<%@page import="java.sql.*"%>

<%-- Import of Java linked SQL functionality involving creating and handling connections --%> 
<%@page import="java.sql.Connection"%>

<%-- Import of Java linked SQL functionality for loading and preparing of API drivers and associated resources --%> 
<%@page import="java.sql.DriverManager"%>

<%-- Import of Java linked SQL functionality to accommodate packaging and deploying of SQL commands --%> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>

<%-- Import of Java linked SQL functionality to accommodate returning data from packaged SQL commands --%>
<%@page import="java.sql.ResultSet"%>

<%-- Import of Java linked SQL functionality to allow the processing of errors or exceptions experienced through computation --%> 
<%@page import="java.sql.SQLException"%>

<%-- Import of Java linked SQL functionality to branch communication between java and mysql --%> 
<%@page import="com.mysql.jdbc.Driver"%>

<%-- Import of Java time, date and I/O data handling classes for formatting and displaying with partial comparison operations --%> 
<%@page import="java.util.Date,java.util.Calendar,java.io.*,java.util.Enumeration"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.text.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="login.login"%>

<%-- META data for HTML head and formatting, plus page title with CSS text size formatting --%> 
	<head>
		<meta http-equiv = "refresh" content = "60" />
		<title> Restaurant Login Page </title>
		<style type = "text/css">
			.big { }
		</style>
	</head>
        
        <%
                
	%>
	
	<%-- START of body... the option to view the menu is presented to the user --%> 
	<body>
		<form action = "default.jsp" method = "post">
					<p> Username <input type = "text" name="uname" /><br>
					    Password <input type = "text" name="passwd" /><br>
                                            <input type = "submit" value = "Login"> <button type="reset" value="reset">Clear</button>
					</p>
                </form>
	
        
        <%
                login L = new login();
                
                String upasser = " ";
                String ppasser = " ";
                String approver = "YES";
                String result = " ";
                upasser = request.getParameter("uname");
                ppasser = request.getParameter("passwd");
                if(upasser==null){upasser="stubuser";}
                if(ppasser==null){ppasser="stubpass";}
                L.setUserName(upasser);
                L.setPassWord(ppasser);
                L.loginUser();
                result = L.alloweduser();
                
                if(result.equals(approver)){
	%>
                <form action = "welcome.jsp" method = "post">
					<p> Authorized - Please proceed<br>
                                            <input type = "submit" value = "Welcome">
					</p>
                </form>
        
        <%
                }else{
        %>
	        <form action = "default.jsp" method = "post">
					<p>Unauthorized - Please login</p>
                </form>   
        <%
                }
        %>
        </body>

