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
				<table border="1">
				<tr>
					<td>First name</td>
					<td>Last name</td>
					<td>Address</td>
					<td>Telephone</td>
					<td>Date</td>
					<td>NumberInParty</td>
					<td>Table No.</td>
				</tr>
				<p>Current Time: <%= new java.util.Date() %></p>
                                <br>
                                <p> <% BillCalculator b = new BillCalculator();%> </p><br>
                                <p> <%b.ShowSelection();%> </p>
	<%-- 			<%
				
				while(ResResult.next()){%>
					<tr>
						<td><%=ResResult.getString("Firstname") %></td>
						<td><%=ResResult.getString("Lastname") %></td>
						<td><%=ResResult.getString("Address") %></td>
						<td><%=ResResult.getString("Telephone") %></td>
						<td><%=ResResult.getString("Date") %></td>
						<td><%=ResResult.getString("NumberInParty") %></td>
						<td><%=ResResult.getString("theTable") %></td>
					</tr>
				<%}
				
				%>
        --%>
        
    </body>
</html>
