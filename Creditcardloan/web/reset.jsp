<%-- 
    Document   : reset
    Created on : 4 Jun, 2020, 10:07:36 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Forgot password</title>
    </head>
    <body>
        <h1>Forgot password</h1>
        <%! String driverName="com.mysql.jdbc.Driver";%>
        <%! String url="jdbc:mysql://localhost:3306/jsptutorial";%>
        <%! String user="root";%>
        <%! String psw="";%>
          
        <%
            
          String email=request.getParameter("id");
          String pwd=request.getParameter("pass");
          
          if(email!=null)
          {
             Connection conn=null;
             PreparedStatement ps=null;
             try
             {
                 Class.forName(driverName);
                 conn=DriverManager.getConnection(url,user,psw);
                 String sql="update register set password='"+pwd+"' where email='"+email+"'";
                 ps=conn.prepareStatement(sql);
                 int i=ps.executeUpdate();
                 if(i>0)
                 {
                     out.print("updated");
                 }
                 else
                 {
                     out.print("not updated");
                 }
             }catch(SQLException sql)
             {
                 out.print(sql);
             }
          }
        %>
        <a href="login.jsp" class="btn btn-primary" >BACK</a>
    </body>
</html>


