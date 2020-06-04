<%-- 
    Document   : loginjava
    Created on : 4 Jun, 2020, 10:00:34 AM
    Author     : ELCOT
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <%
        
         String uname=request.getParameter("uname");
         String pass=request.getParameter("pwd");
         
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;
         
         Class.forName("com.mysql.jdbc.Driver");
         conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptutorial","root","");
         st=conn.createStatement();
         String qry="select*from register where name='"+uname+"' and password='"+pass+"'";
         rs=st.executeQuery(qry);
         if(rs.next())
         {
             response.sendRedirect("home.jsp");
         }
         else
         {
             out.print("LOgin is not successfull");
         }
      %>
    </body>
</html>

