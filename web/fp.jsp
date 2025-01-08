<%-- 
    Document   : fp
    Created on : Oct 19, 2024, 11:57:23 AM
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
             String email=request.getParameter("e1");
            String password=request.getParameter("e2");
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                PreparedStatement ps= con.prepareStatement("update login set password=? where email=?");
                ps.setString(2,email);
                ps.setString(1, password);
                int i=ps.executeUpdate();
                if(i > 0)
                {
                  out.println("Record Updated Successfully");
                }
                else
               {
                out.println("There is a problem in updating Record.");
               } 
               }catch (Exception e)
               {
                   out.println(e);
               }
            
            %>
    </body>
</html>
