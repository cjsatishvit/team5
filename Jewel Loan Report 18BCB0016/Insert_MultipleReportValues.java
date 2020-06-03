package jewel_loan;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Calendar;
import java.sql.PreparedStatement;

public class Insert_ReportValues 
{
	public static void main(String[] args)
  	{
		try {


      		// create a mysql database connection
        	String user = "root";
       		String password = "secret";
      		String host= "jdbc:mysql://localhost:3306/jewel_loan";

      		Connection con = DriverManager.getConnection(host, user, password);
		PreparedStatement ps = con.createStatement();

		}
		catch ( SQLException err ) {
		System.out.println( err.getMessage( ) );
		}


     
      ps.executeUpdate("INSERT INTO jewel_loan.report (customer_id, name, sex, age, loan_amt, address, date_approval, contact)"
          +"VALUES (1001, 'Claire Randall', 'Female', 54, 600000, '1650 W Cornelia Ave ', 2013-07-17 17:18:55, '6628772822')");

      ps.executeUpdate("INSERT INTO jewel_loan.report (customer_id, name, sex, age, loan_amt, address, date_approval, contact)"
          +"VALUES (1002, 'James Malcolm', 'Male', 51, 450000, '11411 S Eggleston Ave ', 2013-07-17 17:18:55, '6315271866')");

      ps.executeUpdate("INSERT INTO jewel_loan.report (customer_id, name, sex, age, loan_amt, address, date_approval, contact)"
          +"VALUES (1003, 'Brianna Randall', 'Female', 28, 500000, '7511 S South Shore Dr ', 2013-07-17 17:18:55, '4778147961')");

      ps.executeUpdate("INSERT INTO jewel_loan.report (customer_id, name, sex, age, loan_amt, address, date_approval, contact)"
          +"VALUES (1004, 'Roger Mackenzie', 'Male', 30, 700000, '2501 W Addison St ', 2013-07-17 17:18:55, '7356355440')");

      ps.executeUpdate("INSERT INTO jewel_loan.report (customer_id, name, sex, age, loan_amt, address, date_approval, contact)"
          +"VALUES (1005, 'Jeremiah Frank Grey', 'Male', 21, 850000, '4929 N Sawyer Ave ', 2013-07-17 17:18:55, '8982332897')");


      conn.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception!");
      System.err.println(e.getMessage());
    }

  }
}