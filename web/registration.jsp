<%-- 
    Document   : registration
    Created on : Oct 19, 2024, 11:22:33 AM
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
        String fn=request.getParameter("t1");
String ln=request.getParameter("t2");
String mob=request.getParameter("t3");
String email=request.getParameter("t4");
String pwd=request.getParameter("t5");
String dob=request.getParameter("t6");
String add=request.getParameter("t7");
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?)");
ps.setString(1,fn);
ps.setString(2,ln);
ps.setString(3,mob);
ps.setString(4,email);
ps.setString(5,pwd);
ps.setString(6,dob);
ps.setString(7,add);
int x=ps.executeUpdate();
if(x>0)
out.println("registration successful");
else
out.println("registration not successful");
}
catch(Exception e)
{
System.out.println(e);
}
        %>
    </body>
</html>
