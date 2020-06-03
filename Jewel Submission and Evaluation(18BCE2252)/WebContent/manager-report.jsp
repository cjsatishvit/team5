<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>  
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Jewel Evaluation Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <!-- <h1>Submit Details</h1>-->
        <div class="container" style="width:800px">
            <div class="sign-up-content">

 <div class="tab">
            <table border=1>
                <tr >
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Account</th>
                    <th>Type</th>
                    <th>Weight</th>
                    <th>Amount</th>
                    <th> Status </th>
                          
                </tr>
        
    
        <%
            Connection conn=null;
            Statement st=null;
            ResultSet rs=null;
            
            
            try
            {
                Class.forName( "com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jewel_eval?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                st=conn.createStatement();
               
                
                String qry="select * from applicants";
                rs=st.executeQuery(qry);
                
                while(rs.next())
                {              
                    %>
                    <tr>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><%=rs.getString(5) %></td>
                        <td><%=rs.getString(6) %></td>      
                        <td><%=rs.getString(7) %></td> 
						<td><%=rs.getString(8) %></td>       
                        <td><%=rs.getString(9) %></td>       
                                                                             
                    </tr>
                    <%                        
                }
        }
             catch(Exception ex){
             	 ex.printStackTrace(response.getWriter());

             }
         %>
        </table>
        </div>

            </div>
        </div>

    </div>
    
    <center>
                    <div class="form-textbox" style="width:100px;">
                        <input type="submit" name="submit" id="submit" class="submit" value="Print" />
                    </div>
    </center>           
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>