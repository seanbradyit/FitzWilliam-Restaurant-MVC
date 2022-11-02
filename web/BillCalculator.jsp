<%-- 
    Document   : BillCalculator
    Created on : 30-Oct-2022, 01:04:15
    Author     : seanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="BillCalculator.BillCalculator"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to the Bill Calculator Application</h1>
        
                                <%-- Initial reservations are shown in table format --%>
				<p> <% BillCalculator b = new BillCalculator();%> </p><br>
                                <%--<table border="1">--%>
                                <%--<tr>--%>
						<p><%out.print(b.ShowSelection(5));%></p>
				<%--</tr>--%>
				<p>Current Time: <%= new java.util.Date() %></p>
                                <br>
        
    </body>
</html>
