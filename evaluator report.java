import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

<%@page import=”net.sf.jasperreports.engine.design.JRDesignQuery”%>
<%@page import=”net.sf.jasperreports.engine.xml.JRXmlLoader”%>
<%@page import=”net.sf.jasperreports.engine.design.JasperDesign”%>
<%@page import=”net.sf.jasperreports.view.JasperViewer”%>
<%@ page language=”java” contentType="text/html"; charset= " UTF-8″ pageEncoding= ” UTF-8 ″%>


<!DOCTYPE html>
<%@ page import=”net.sf.jasperreports.engine.*” %>
<%@ page import=”java.io.File” %>
<%@ page import=”java.io.FileInputStream” %>
<%@ page import=”java.io.FileNotFoundException” %>
<%@ page import=”java.io.InputStream” %>
<%@ page import=”java.sql.Connection” %>
<%@ page import=”java.sql.DriverManager” %>
<%@ page import=”java.sql.SQLException” %>


<head>
<meta http-equiv=”Content-Type” content= ”text/html; charset = UTF-8″>
<title> REPORT  </title>
<style type = "text/css">
<style>
        table,td,th{
            border: 1.75px solid black;
            border-collapse: collapse;
        }
        th{
            font-weight: bold;
            font-size:large;
        }
        td{
            font-size: medium;
            padding-left: 5px;
            background-color: white;
        }
        
       form{
            padding-top: 25 px;
        }
        .tab{
            padding-top: 100 px;
        }
        .but1,.but2{
            border: 0.5px solid black;
            background-color: #5487d5;
            width: 100 px;
            margin-left: 40px;
            margin-right: 40px;
        }
        .but1:hover{
            background-color: #61db6f;
            border: 0.5px solid black;
        }
        .but2:hover{
            background-color: #61db6f ;
            border: 0.5px solid black;
        }
        body{
            background-color: rgb(250,250,250);
			font: 12pt Georgia, "Times New Roman", Times, serif; line-height: 1.3;
        }
       
    </style>

@page {
    /* switch to landscape */
    size: landscape;
    /* set page margins */
    margin: 0.5cm;
    @top-center {
        content: element(header);
    }
    @bottom-center {
        content: element(footer);
    }
    @bottom-right{
        content: counter(page) " of " counter(pages);
    }
}
div.header {
    display: block;
    text-align: center;
    position: running(header);
    width: 100%;
}

div.footer {
    display: block;
    text-align: center;
    position: running(footer);
    width: 100%;
}
body {
    padding-top: 50px;
}
.custom-page-start {
    margin-top: 50px;
}
</head>
<body>
<center>
<% 
Connection conn=null;
try {
//Connecting to the MySQL database

Class.forName(“com.mysql.jdbc.Driver”);
conn = (connection)DriverManager.getConnection(“jdbc:mysql://localhost:127.0.0.1/evaluator”, “root” ,””);

String report=”C:\\Users\\HP\\workspace\\ReportExample\\Evaluator.jrxml”;

JasperReport jasperreport=JasperCompileManager.compileReport(report);
JasperPrint jp=JasperFillManager.fillReport(jasperreport, null,conn);
JasperViewer.viewReport(jp);

}
catch(Exception e)
{
out.println(e);
}


<form  >
            <button class="but2" type="submit" value="submit">SEND REPORT</button>
            <button  class="but1" onclick="goBack()">BACK</button>

</form>


public class evaluators {

	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	final private String host = "xxxxxxxx";
	final private String user = "xxxxxxxx";
	final private String passwd = "xxxxxxxx";
	final private String database = "xxxxxxxx";

	public void connectToDB() throws Exception {
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");

			// Setup the connection with the DB
			connect = DriverManager.getConnection(“jdbc:mysql://localhost:127.0.0.1/evaluator”, “root” ,””);

		} catch (Exception e) {
			throw e;
		}
	}

	public void readevaluators() throws Exception {
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery("select * from " + database + ".evaluators");
			while (resultSet.next()) {
				int Id = resultSet.getInt("Id");
				String name = resultSet.getString("name");
				int total_loan = resultSet.getint("total_loan");
				int loan_approved = resultSet.getint("loan_approved");
				int loan_rejected = resultSet.getint("loan_rejected");

				System.out.println(String.format("Id: %d name: %5s  total_loan: %d  loan_approved : %d  loan_rejected: %d", Id, name,total_loan,loan_approved,loan_rejected));
			}
		} catch (Exception e) {
			throw e;
		}
	}

	// You need to close the resultSet
	public void close() 
	{
		try {
			if (resultSet != null) {
				resultSet.close();
			}

			if (statement != null) {
				statement.close();
			}

			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {

		}
	}
	
         

}
%>
</center>
</body>
</html>