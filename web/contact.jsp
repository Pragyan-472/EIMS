<%-- 
    Document   : contact
    Created on : Oct 19, 2024, 11:42:52 AM
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
            String fn=request.getParameter("c1");
            String mob=request.getParameter("c2");
            String email=request.getParameter("c3");
            String com=request.getParameter("c4");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","");
                PreparedStatement ps;
                ps = con.prepareStatement("insert into enquiry values(?,?,?,?)");
                ps.setString(1,fn);
                ps.setString(2,mob);
                ps.setString(3,email);
                ps.setString(4, com);
                int i=ps.executeUpdate();
                if(i>0)
                {
                    out.println("register sucessfully");
                }
                else
                {
                    out.println("Register unsuccessfully");
                }
        }catch(Exception e)
        {
            out.println(e);
        }
            
            %>
    </body>
</html>
