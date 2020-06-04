
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ page import=”java.io.File” %>
<%@ page import=”java.io.FileInputStream” %>
<%@ page import=”java.io.FileNotFoundException” %>
<%@ page import=”java.io.InputStream” %>
<%@ page import=”java.sql.Connection” %>
<%@ page import=”java.sql.DriverManager” %>
<%@ page import=”java.sql.SQLException” %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REPORT</title>
</head>
   <style type = "text/css">
        table,td,th{
            border: 1.5px solid black;
            border-collapse: collapse;
        }
        th{
            font-weight: bold;
            font-size: large;
        }
        td{
            font-size: large;
            padding-left: 5px;
            background-color: white;
        }
        
       form{
            padding-top: 25%;
        }
        .tab{
            padding-top: 100px;
        }
        .but1,.but2{
            border: 1px solid black;
            background-color: #A9A3A2;
            width: 80px;
            margin-left: 40px;
            margin-right: 40px;
        }
        .but1:hover{
            background-color: #A9A3A2;
            border: 1px solid black;
           
        }
        .but2:hover{
            background-color: yellow ;
            border: 1px solid black;
            

        }
        
        h1{
            background-color: #A9A3A2;
            border: 1px solid black;
            padding-bottom: 10px;
            padding-top: 10px;
        }
        body{
            background-color: 	rgb(250,250,250);
        }
       
    </style>
    
    
    <script>
        function goBack() {
          window.history.back();
        }
    </script>
<body>
<h1>REPORT GENERATION</h1>
        <div class="tab">
            <table style="width:75%;height: 10%px;">
                <tr style="background-color: #A9A3A2">
                    <th>id</th>
                    <th>name</th>
                    <th>total_loan</th>
                    <th>loan_approved</h>
                    <th>loan_rejected</th>
                </tr>

<% 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

Connection conn=null;
try {
//Connecting to the MySQL database

Class.forName(“com.mysql.jdbc.Driver”);
conn = DriverManager.getConnection(“jdbc:mysql://127.0.0.1:3306/test”, “root” ,”root”);


}
catch(SQLException ex)
{
out.println(ex);
}

public class SimpleDb2CsvExporter{

	public void connectToDB() throws SQLException {
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");

			// Setup the connection with the DB
			connect = DriverManager.getConnection(“jdbc:mysql://127.0.0.1:3306/test”, “root” ,”root”);
			
			//database to cv
			 string csvFilePath = "evaluator-export.csv"

		} catch (Exception ex) {
			throw ex;
		}
	}

	public void read() throws SQLException {
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery("select * from " + evaluator + ".evaluator");
                        BufferedWriter fileWriter = new BufferedWriter(new FileWriter(csvFilePath));
                        fileWriter.write("idevaluator,evaluatorname,evaluatortotal loan no.,evaluatorloan_approved,evaluatorloan_rejected");
			while (resultSet.next()) {
				int id = resultSet.getInt("idevaluator");
				String name = resultSet.getString("evaluatorname");
				int total_loan = resultSet.getint("evaluatortotal loan no.");
				int loan_approved = resultSet.getint("evaluatorloan_approved");
				int loan_rejected = resultSet.getint("evaluatorloan_rejected");

				System.out.println(String.format("id: %d name: %8s tota_loan no.: %d loan_approved : %d loan_rejected: %d", id,name,total_loan,loan_approved,loan_rejected));
                                
                                fileWriter.newline();
				fileWriter.write(line);
			}
		} catch (SQLException ex) {
			throw ex;
		}
	}

	// You need to close the resultSet

	public void close() {
		try {
			if (resultSet != null) {
				resultSet.close();
			}

			else (statement != null) {
				statement.close();
			}

			else (connect != null) {
				connect.close();
			}
                        fileWriter.close();
		} catch (SQLException ex) {
                                           

                   system.err.println(ex);

		}
	}

}
<form  >
<button class="but2" type="submit" value="submit">Generate report hardcopy</button>
<button  class="but1" onclick="go()">Go</button>

</form>

</body>
</html>