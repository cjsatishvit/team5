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
		PreparedStatement ps=null;

		}
		catch ( SQLException err ) {
		System.out.println( err.getMessage( ) );
		}


      // create a sql date object so we can use it in our INSERT statement
      Calendar calendar = Calendar.getInstance();

      java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());

      // the mysql insert statement

		try {
	String query="insert into jewel_loan.report(customer_id, name, sex, age, loan_amt, address, date_approval, contact) values(?,?,?,?,?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setInt(1,1001);
		 ps.setString(2, "Claire Randall");
		 ps.setString(3, "Female");
		 ps.setInt(4, 54);
		 ps.setInt(5.600000);
		 ps.setString(6, "1650 W Cornelia Ave");
		 ps.setDate(7, 2013-07-17 17:18:55);
		 ps.setString(8, "6628772822");
		 
		
		 ps.executeUpdate();
		} catch (Exception e) {
		 System.err.println(e);
		}
	}

}