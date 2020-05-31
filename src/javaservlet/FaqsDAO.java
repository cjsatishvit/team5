/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	FaqsDAO.java
 * Purpose:     	Fetches FAQs from SQL database helpmanual for both gold and credit card loan. 
 * Class Used by:   UserServletcreditcardloan.java, UserServletgoldloan.java;
 * Classes Used:    Quesans.java, DatabaseConnection.java;
 */

package javaservlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FaqsDAO {
	private static final String SELECT_ALL_GLFAQS = "SELECT * FROM helpmanual.goldloanfaqs";
	private static final String SELECT_ALL_CLFAQS = "SELECT * FROM helpmanual.creditcardfaqs;";

	public FaqsDAO() {
	}

    /*
	   * Author:       	Hirthik Mathavan
	   * Reg. No:       18BCE2036
	   * Function Name: selectGoldloanFaqs()
	   * Purpose:       Fetches data from SQL database and stores them in an ArrayList.
	   * Arguments:     -
	   * Return:        List < Quesans >
	   */


	public List<Quesans> selectGoldloanFaqs() throws ClassNotFoundException {

		List<Quesans> faqsgl = new ArrayList<>();
		// Step 1: Establishing a Connection
		try {

			Connection connection = DatabaseConnection.connecttoDatabase();

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_GLFAQS);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String question = rs.getString("question");
				String answer = rs.getString("answer");
				faqsgl.add(new Quesans(question, answer));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return faqsgl;
	}
    
    
    
    /*
	   * Author:       	Hirthik Mathavan
	   * Reg. No:       18BCE2036
	   * Function Name: selectCreditcardloanFaqs()
	   * Purpose:       Fetches data from SQL database and stores them in an ArrayList.
	   * Arguments:     -
	   * Return:        List < Quesans >
	   */
    
    
	public List<Quesans> selectCreditcardloanFaqs() throws ClassNotFoundException {

		List<Quesans> faqscl = new ArrayList<>();
		// Step 1: Establishing a Connection
		try {

			Connection connection = DatabaseConnection.initializeDatabase();

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CLFAQS);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String creditcardquestion = rs.getString("question");
				String creditcardanswer = rs.getString("answer");
				faqscl.add(new Quesans(creditcardquestion, creditcardanswer, true));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return faqscl;
	}
    
    
    /*
	   * Author:       	Hirthik Mathavan
	   * Reg. No:       18BCE2036
	   * Function Name: printSQLException()
	   * Purpose:       Prints Errors
	   * Arguments:     SQLException
	   * Return:        -
	   */
    

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
}
