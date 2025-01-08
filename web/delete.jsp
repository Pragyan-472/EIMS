<%-- 
    Document   : delete
    Created on : Oct 19, 2024, 12:02:17 PM
    Author     : HP
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String email = request.getParameter("email");
             try
             {
               Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
           PreparedStatement ps=con.prepareStatement("delete from student WHERE email=?");
           
            ps.setString(1, email);
           
            int i = ps.executeUpdate();

            if (i > 0) {
                out.println("Record Deleted Successfully");
            } else {
                out.println("There is a problem in deleting record.");
            }
        } catch (Exception e) {
            System.out.print(e);
        }   
             
            %>
    </body>
</html>
