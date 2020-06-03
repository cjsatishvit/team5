<%-- 
    Document   : data
    Created on : May 25, 2020, 4:12:16 PM
    Author     : DELL
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
    <center>
        <%
            
            Connection conn=null;
            Statement st=null;
            ResultSet rs=null; 
           
            
            try
            {
                Class.forName( "com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/newjsp","root","");
                st=conn.createStatement();
                
                
                
                String qry="INSERT INTO `jsp1`( `name`, `amt`, `acc`, `months`) SELECT `name`, `amt`, `acc`, `monpaid` FROM `jsp` WHERE monpaid>2";
                st.executeUpdate(qry);
                String qry1 ="DELETE FROM `jsp` WHERE monpaid>2";
                st.executeUpdate(qry1);
                
                
                
        }
             catch(Exception ex){}
         %>
    </center>
    </body>
</html>
