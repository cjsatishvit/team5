<%-- 
    Document   : signupjava
    Created on : 4 Jun, 2020, 10:01:04 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String name=request.getParameter("name");
         String sex=request.getParameter("sex");
         String add=request.getParameter("address");
         String mod=request.getParameter("mobile");
         String mail=request.getParameter("email");
         String pass=request.getParameter("password");
         String repass=request.getParameter("retype");
         
     
        if(mod.length()>=10)
        {
            try
            {
               Connection conn=null;
               Statement st=null;
               Class.forName("com.mysql.jdbc.Driver");
               conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptutorial","root","");
               st=conn.createStatement();
            
               String qry="INSERT INTO register(name,sex,address,mobile,email,password,retype)" + "VALUES('"+name+"','"+sex+"','"+add+"','"+mod+"','"+mail+"','"+pass+"','"+repass+"')";
               st.executeUpdate(qry);
               out.print("Customer Registered successfully");
            }catch(Exception ex)
            {
               out.print(ex.getMessage());
            }
        }
        else
        {
            out.print("Invalid input");
        }
        
      %>
      <a href="register.jsp" class="btn btn-primary">BACK</a>
    </body>
</html>


