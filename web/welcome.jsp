<%-- 
    Document   : welcome.jsp
    Created on : 30-Jul-2022, 19:17:10
    Author     : seanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="login.login"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <% 
    String token = request.getParameter("session");
    %>
    
    <body>
        <h1>Welcome <%= token %> </h1>
    </body>
</html>
