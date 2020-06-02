<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Submitted</title>
    </head>
    <body>
      <%    
            Connection conn=null;
            Statement st=null;
            ResultSet rs=null; 
           	
            //String name = request.getParameter("name");
            //String name;
               //request.setAttribute("name", name);
            //String r = "HELLO";
            
           	String name = request.getParameter("name");

            
            try
            {
                Class.forName( "com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jewel_eval?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                st=conn.createStatement();

                String qry="INSERT INTO `applicants`( `name`, `phone`,`email`,`acc`,`type`,`weight`) VALUES (name,1,1,1,1,1)";
                st.executeUpdate(qry);
        	}
             catch(Exception ex){
             	 ex.printStackTrace(response.getWriter());
            	 %>
            	 Some error here
            	 <%
             }
         %>
     
    </body>
    </html>