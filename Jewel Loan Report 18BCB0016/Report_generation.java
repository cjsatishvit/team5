package jewel_loan;

import java.io.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

 
public class Report_Generation {
 
    public static void main(String[] args) {

    try {


      		// create a mysql database connection
        	String user = "root";
       		String password = "secret";
      		String host= "jdbc:mysql://localhost:3306/jewel_loan";
		String csvFilePath = "C:\Users\hp\Desktop\Report-export.csv";

      		Connection con = DriverManager.getConnection(host, user, password);
		PreparedStatement ps=null;
	}
		catch ( SQLException err ) {
		System.out.println( err.getMessage( ) );
		}
        
        try {
		
            String sql = "SELECT * FROM jewel_loan.report";
             
            Statement statement = connection.createStatement();
             
            ResultSet result = statement.executeQuery(sql);
             
            BufferedWriter fileWriter = new BufferedWriter(new FileWriter(csvFilePath));
             
            // write header line containing column names       
            fileWriter.write("customer_id, name, sex, age, loan_amt, address, date_approval, contact");
             
            while (result.next()) {
                int customer_id = result.getInt("customer_id");
		String name = result.getString("name");
		String sex = result.getString("sex");
		int age = result.getInt("age");
                int loan_amt = result.getString("loan_amt");
		String address = result.getString("address");                
                Timestamp date_approval = result.getTimestamp("date_approval");
                String contact = result.getString("contact");
                 
                if (name == null) {
                    name = "";   // write empty value for null
                } else {
                    name = "\"" + name + "\""; // escape double quotes
                }
                 
                String line = String.format("\"%s\",%s,%.1f,%s,%s", customer_id, name, sex, age, loan_amt, address, date_approval, contact);
                 
                fileWriter.newLine();
                fileWriter.write(line);            
      }
             
            statement.close();
            fileWriter.close();
             
        } catch (SQLException e) {
            System.out.println("Datababse error:");
            e.printStackTrace();
        } catch (IOException e) {
            System.out.println("File IO error:");
            e.printStackTrace();
        }
         
    }
 
}
