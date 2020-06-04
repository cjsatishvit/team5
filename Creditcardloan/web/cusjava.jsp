<%-- 
    Document   : cusjava
    Created on : 4 Jun, 2020, 10:01:53 AM
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
        <title>Customer page</title>
    </head>
    <body>
        <%
                String name=request.getParameter("name");
		String date=request.getParameter("date");
		String father=request.getParameter("father");
		String mother=request.getParameter("mother");
		String spouse=request.getParameter("spouse");
		String age=request.getParameter("age");
                String gender=request.getParameter("gender");
		String religion=request.getParameter("religion");
		String nation=request.getParameter("nation");
		String education=request.getParameter("education");
		String occupation=request.getParameter("occupation");
		String income=request.getParameter("income");
		String number=request.getParameter("number");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String pin=request.getParameter("pin");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String company=request.getParameter("company");
		String dep=request.getParameter("dep");
		String office=request.getParameter("office");
		String ccity=request.getParameter("ccity");
		String cpin=request.getParameter("cpin");
		String cstate=request.getParameter("cstate");
		String ccountry=request.getParameter("ccountry");
		String tele=request.getParameter("tele");
		String person=request.getParameter("person");
		String id=request.getParameter("id");
        
                Connection conn=null;
                Statement st=null;
                int a=0;
                String str1=Integer.toString(a);
           if(tele.length()>=10||person.length()>=10||!income.equals(str1)||!age.equals(str1))
           {
                try
                {
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptutorial","root","");
                 st=conn.createStatement();
                 
                 
                String qry="INSERT INTO customer(name,date,father,mother,spouse,age,gender,religion,nation,education,occupation,income,number,address,city,pin,state,country,company,dep,office,ccity,cpin,cstate,ccountry,tele,person,id)"+"VALUES('"+name+"','"+date+"','"+father+"','"+mother+"','"+spouse+"','"+age+"','"+gender+"','"+religion+"','"+nation+"','"+education+"','"+occupation+"','"+income+"','"+number+"','"+address+"','"+city+"','"+pin+"','"+state+"','"+country+"','"+company+"','"+dep+"','"+office+"','"+ccity+"','"+cpin+"','"+cstate+"','"+ccountry+"','"+tele+"','"+person+"','"+id+"')";
                st.executeUpdate(qry);
                out.print("APPLY THE LOAN IS SUCCESSFUL");
                }
                catch(Exception ex)
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

