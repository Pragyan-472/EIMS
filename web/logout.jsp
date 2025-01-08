<%-- 
    Document   : logout
    Created on : Nov 17, 2024, 11:53:10 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    if (session != null) {
        session.invalidate(); // End the session
    }
    response.sendRedirect("studentlogin.html"); // Redirect to login page
%>
    </body>
</html>
