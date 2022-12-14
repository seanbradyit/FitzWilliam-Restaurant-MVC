<%-- 
    Document   : welcome.jsp
    Created on : 30-Jul-2022, 19:17:10
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
        <div style="border: 1px solid black;">
            <jsp:include page="header.jsp" />
        </div>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
                <% // if there is a successfully logged in user then...
                if(token!=null){
                    %>
                                                    <p>
                                                    <h1>Welcome: <%= token %> </h1>
                                                    <a href="BillCalculator.jsp">Restaurant Bill Calculator</a><br>
                                                    <a href="http://localhost:8084/Reservation.jsp">Restaurant Reservations</a><br>
                                                    <a href="http://localhost:8084/RestaurantMenu/Menu">Menu</a><br>
                                                    <form action = "default.jsp" method = "post">
                                                            <label><input type = "submit" value = "Logout" /></label>
                                                            <%  
                                                                token = null;
                                                            %>
                                                    </form>
                                                    </p>
                <%
                }else{// Otherwise show the below...
                    %>
                            <form action = "default.jsp" method = "post">
                                                    <p>Unauthorized - Please login</p>
                            </form>   
                    <%
                }
                %>
    
    <body>
    </body>
    <footer>
            <div style="border: 1px solid black;">
            <jsp:include page="footer.jsp" />
            </div>
    </footer>
</html>
