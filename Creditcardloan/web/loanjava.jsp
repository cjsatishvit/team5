<%-- 
    Document   : loanjava
    Created on : 4 Jun, 2020, 10:05:02 AM
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
    </head>
    <body>
        <%
        String name=request.getParameter("name");
        String type=request.getParameter("loan");
        String date=request.getParameter("date");
        String total=request.getParameter("amount");
        String mob=request.getParameter("mobile");
        String number=request.getParameter("account");
        String emi=request.getParameter("emi");
        String credit=request.getParameter("score");
        String branch=request.getParameter("bank");
        String addr=request.getParameter("address");
        
        int a=0;
        int numb=750;
        String str1=Integer.toString(a);
        String str2=Integer.toString(numb);
        if(!total.equals(str1)&&!emi.equals(str1)&&mob.length()>=10&&Integer.parseInt(credit)>numb)
        {
       
            try
            {
             
                Connection conn=null;
                Statement st=null;
                Class.forName("com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptutorial","root","");
                st=conn.createStatement();
            
                String qry="INSERT INTO loan(name,loan,date,amount,mobile,account,emi,score,bank,address)" + "VALUES('"+name+"','"+type+"','"+date+"','"+total+"','"+mob+"','"+number+"','"+emi+"','"+credit+"','"+branch+"','"+addr+"')";
                st.executeUpdate(qry);
                out.print("data inserted successfuly");
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
     <a href="home.jsp" class="btn btn-primary">BACK</a>
    </body>
</html>

