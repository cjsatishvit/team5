<%-- 
    Document   : loandata
    Created on : 4 Jun, 2020, 10:09:01 AM
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
        <title>JSP Page</title>
        <style>
            table,td,th,h1{
                border: 1.5px solid black;
                border-collapse: collapse;
            }
            th{
                font-weight: bold;
                font-size: x-large;
            }
            td{
                font-size: large;
                padding-left: 5px;
                background-color: white;
            }
            h1{
                background-color: lightblue;
                border: 1px solid black;
                padding-bottom: 10px;
                padding-top: 10px;
            }
            body{
                background-color: rgb(250,250,250);
            }
        </style>
    </head>
    <body>
        <h1>LOAN DETAILS</h1>
        <table style="width: 600px;height: 200px;">
            <tr style="background-color: lightblue">
                <th>ID</th>
                <th>NAME</th>
                <th>LOAN TYPE</th>
                <th>AMOUNT</th>
                <th>MOBILE</th>
                <th>ACCOUNT</th>
                <th>EMI</th>
                <th>CREDIT SCORE</th>
            </tr>
            
            <%
            
                 Connection conn=null;
                 Statement st=null;
                 ResultSet rs=null;
                 
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
                     conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptutorial","root","");
                     st=conn.createStatement();
                     
                     String qry="select id,name,loan,amount,mobile,account,emi,score from loan";
                     rs=st.executeQuery(qry);
                     
                     while(rs.next())
                     {
                         %>
                         <tr>
                             <td><%=rs.getString(1) %></td>
                             <td><%=rs.getString(2) %></td>
                             <td><%=rs.getString(3) %></td>
                             <td><%=rs.getString(4) %></td>
                             <td><%=rs.getString(5) %></td>
                             <td><%=rs.getString(6) %></td>
                             <td><%=rs.getString(7) %></td>
                             <td><%=rs.getString(8) %></td>
                         </tr>
                         <%
                     }

                  }
                 catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
            %>
        </table>
        <a href="manager.jsp" class="btn btn-primary">BACK</a>
    </body>
</html>
