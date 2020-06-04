<%-- 
    Document   : applicationdata
    Created on : 4 Jun, 2020, 10:08:42 AM
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
        <title>APPLICATION DETAILS</title>
        <style>
            table,td,th{
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
                border: 2.5px solid black;
                width:3070px;
                padding-bottom: 10px;
                padding-top: 10px;
            }
            body{
                background-color: rgb(250,250,250);
            }
        </style>
    </head>
    <body>
        <h1>Applications Details</h1>
        <table style="width: 600px;height: 200px;">
            <tr style="background-color: lightblue">
                <th>NAME</th>
                <th>DATE</th>
                <th>FATHER</th>
                <th>MOTHER</th>
                <th>SPOUSE</th>
                <th>AGE</th>
                <th>GENDER</th>
                <th>RELIGION</th>
                <th>NATION</th>
                <th>EDUCATION</th>
                <th>OCCUPATION</th>
                <th>INCOME </th>
                <th>ADDRESS</th>
                <th>NUMBER</th>
                <th>CITY</th>
                <th>PIN</th>
                <th>STATE</th>
                <th>COUNTRY</th>
                <th>COMPANY</th>
                <th>DEPARTMENT</th>
                <th>OFFICE ADDRESS</th>
                <th>COMPANY CITY</th>
                <th>COMPANY PINCODE</th>
                <th>COMPANY STATE</th>
                <th>COMPANY COUNTRY</th>
                <th>TELEPHONE NUMBER</th>
                <th>PERSONAL NUMBER</th>
                <th>EMAIL ID</th>
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
                     
                     String qry="select* from customer";
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
                             <td><%=rs.getString(9) %></td>
                             <td><%=rs.getString(10) %></td>
                             <td><%=rs.getString(11) %></td>
                             <td><%=rs.getString(12) %></td>
                             <td><%=rs.getString(13) %></td>
                             <td><%=rs.getString(14) %></td>
                             <td><%=rs.getString(15) %></td>
                             <td><%=rs.getString(16) %></td>
                             <td><%=rs.getString(17) %></td>
                             <td><%=rs.getString(18) %></td>
                             <td><%=rs.getString(19) %></td>
                             <td><%=rs.getString(20) %></td>
                             <td><%=rs.getString(21) %></td>
                             <td><%=rs.getString(22) %></td>
                             <td><%=rs.getString(23) %></td>
                             <td><%=rs.getString(24) %></td>
                             <td><%=rs.getString(25) %></td>
                             <td><%=rs.getString(26) %></td>
                             <td><%=rs.getString(27) %></td>
                             <td><%=rs.getString(28) %></td>
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

