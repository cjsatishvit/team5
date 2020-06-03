<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>  
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.*"%>

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
           	
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String acc = request.getParameter("acc");
            String member_level = request.getParameter("member_level");
            Integer weight = Integer.parseInt(request.getParameter("weight"));
            Integer amt = Integer.parseInt(request.getParameter("amt"));
            
            String status;
            
            //wt=Integer.parseInt(weight);
            
            if (amt<=((0.6)*(30)*(weight))){
            	status="Accepted";
            }else{
            	status="Rejected";
            }
            
            
            //String name;
               //request.setAttribute("name", name);
            //String r = "HELLO";
            
           	//String name = request.getParameter("name");

            
            try
            {
                Class.forName( "com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jewel_eval?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                st=conn.createStatement();

                //String qry="INSERT INTO `applicants`( `name`, `phone`,`email`,`acc`,`type`,`weight`) VALUES (request.getParameter('name'),1,1,1,1,1)";
                //String sql = "INSERT INTO applicants " + "VALUES ('"+request.getParameter("name") + "',1,1,1,1,1)";
                //String sql = "INSERT INTO applicants " +
                 // "VALUES ('"+request.getParameter("name") + "', '"+ request.getParameter("email") + "', '"+ request.getParameter("name") + "', '"+request.getParameter("name") +"', '"+request.getParameter("name") +"', '"+request.getParameter("name") +"')";
                
                int i = st.executeUpdate("insert into applicants (`name`, `phone`,`email`,`acc`,`type`,`weight`,`amount`,`status`) values('"+name+"','"+phone+"','"+email+"','"+acc+"','"+member_level+"','"+weight+"','"+amt+"','"+status+"')");
                
                //st.executeUpdate(sql);
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