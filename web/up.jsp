<%-- 
    Document   : up
    Created on : Oct 19, 2024, 11:49:44 AM
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
    <%
          String email=request.getParameter("t1");
            String pwd=request.getParameter("t2");
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
            PreparedStatement ps=con.prepareStatement("update student set password=? where email=?");
            ps.setString(2,email);
            ps.setString(1, pwd);
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("Password Updated");
            }
            else
            {
                out.println("Password Updation failed");
            }
                
        }catch(Exception e)
        {
            out.println(e);
        }
            
    %>
</html>
