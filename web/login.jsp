<%-- 
    Document   : login
    Created on : Oct 19, 2024, 11:32:28 AM
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("p1");
            String pwd=request.getParameter("p2");
            try{
                 Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
            PreparedStatement ps=con.prepareStatement("select * from student WHERE email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, pwd);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                 response.sendRedirect("Dashboard.html");
            }
            else
            {
                out.println("Login Unsucessful");
            }
            
        }catch(Exception e)
        {
            out.println(e);
        }
            
        %>
    </body>
</html>
