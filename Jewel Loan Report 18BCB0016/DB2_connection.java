package jewelloan
import java.sql.*; 
import java.sql.Connection;
import java.sql.DriverManager; 
import java.sql.SQLException;                                               

public class DB2_connection 
{
  public static void main(String[] args) 
  {
	  
	  
	  
	  import java.sql.*;

public class Db_Connection 
{
	public static void main(String[] args)
	{
		Db2_Connection obj = new Db2_Connection();
		System.out.println(obj.getConnection());
	}
	public Connection getConnection()
	{
		Connection connection = null;
		//System.out.println("Connection failed");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewel_loan.report","root","hamartia");		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return connection;
	}

}
	  
