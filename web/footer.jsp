<%-- 
    Document   : footer
    Created on : 18-Dec-2022, 19:04:04
    Author     : seanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="login.login"%>
<!DOCTYPE html>

    <% 
        // Also the above import="login.login" package is security module requested accommodating login operations
        //    
        // Code is here for cookie implementation but had to develop my own solution as servlet wasn't used hence why standard cookie creation wasn't working...
        // ------------------------------------------------------------------------------//
        ///Cookie mysession = new Cookie("mysession", request.getParameter("mysession"));
        ///mysession.setMaxAge(5);
        ///response.addCookie( mysession );
        // ------------------------------------------------------------------------------//
        String token = request.getParameter("mysession");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div style="border: 1px solid black;">
        <p style="color:rgba(255,0,0,1);"><b>Mario's Munchies Restaurant</b></p>
        <img src="logo-diner.png" width="60" height="60">
        <br> Sean Brady © 2022
        <br>
        <% // if there is a successfully logged in user then...
                if(token!=null){
                    %>
                <a href="BillCalculator.jsp">Restaurant Bill Calculator</a><br>
                <a href="http://localhost:8084/Reservation.jsp">Restaurant Reservations</a><br>
                <a href="http://localhost:8084/RestaurantMenu/Menu">Menu</a><br>
                <a href="default.jsp">Logout</a><br>
        <%
                }else{// Otherwise show the below...
                    %>
                    <a href="default.jsp">Logout</a><br>
                    <%
                }
                %>
        
        </div>
    </body>
</html>
