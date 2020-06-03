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
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
        
       form{
            padding-top: 30px;
        }
        .tab{
            padding-top: 100px;
        }
        .but1,.but2{
            border: 1px solid black;
            background-color: greenyellow;
            width: 80px;
            margin-left: 40px;
            margin-right: 40px;
        }
        .but1:hover{
            background-color: red;
            border: 1px solid black;
        }
        .but2:hover{
            background-color: yellow ;
            border: 1px solid black;
        }
        
        h1{
            background-color: greenyellow;
            border: 1px solid black;
            padding-bottom: 10px;
            padding-top: 10px;
        }
        body{
            background-color: 	rgb(250,250,250);
        }
       
    </style>

<body>


<h1>3+ Months Due Users</h1>
        <div class="tab">
            <table style="width:600px;height: 200px;">
                <tr style="background-color: greenyellow">
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Account Number</th>
                    <th>Months Pending</th>
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
        <form  >
            <button class="but2" type="submit" value="submit">REPORT</button>
            <button  class="but1" onclick="goBack()">BACK</button>

         </form>
         
         


</body>
</html>