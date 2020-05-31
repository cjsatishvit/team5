/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	DatabaseConnection.java
 * Purpose:       	Creates a connection with databases feedback and helpmanual.
 * Class Used by:   FaqsDAO.java, InsertDatacreditcardloan.java, InsertDatagoldloan.java;
 * Classes Used:    -
 */

package javaservlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	
	 /*
	   * Author:       	Hirthik Mathavan
	   * Reg. No:       18BCE2036
	   * Function Name: initializeDatabase()
	   * Purpose:       Connects to SQL database(feedback) using pre-defined variables
	   * Arguments:     -
	   * Return:        Connection
	   */
	
		protected static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
			// Initialize all the information regarding
			// Database Connection
			String dbDriver = "com.mysql.jdbc.Driver";
			String dbURL = "jdbc:mysql:// localhost:3306/";
			// Database name to access
			String dbName = "feedback";
			String dbUsername = "root";
			String dbPassword = "jaanav123";

			Class.forName(dbDriver);
			Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
			return con;
		} 
		
	 /*
	   * Author:       	Hirthik Mathavan
	   * Reg. No:       18BCE2036
	   * Function Name: connecttoDatabase()
	   * Purpose:       Connects to SQL database(helpmanual) using pre-defined variables
	   * Arguments:     -
	   * Return:        Connection
	   */
	
		protected static Connection connecttoDatabase() throws SQLException, ClassNotFoundException {
			// Initialize all the information regarding
			// Database Connection
			String dbDriver = "com.mysql.jdbc.Driver";
			String dbURL = "jdbc:mysql:// localhost:3306/";
			// Database name to access
			String dbName = "helpmanual";
			String dbUsername = "root";
			String dbPassword = "jaanav123";

			Class.forName(dbDriver);
			Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
			return con;
		} 
}
