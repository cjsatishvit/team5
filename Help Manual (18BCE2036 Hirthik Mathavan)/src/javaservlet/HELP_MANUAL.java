/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	Quesans.java
 * Purpose:       	Java class for FAQs
 * Class Used by:   Servletgoldloan.java, Servletcreditcardloan.java;
 * Classes Used:    -
 */

package javaservlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HELP_MANUAL {

	String question;
	String answer;
	String creditcardquestion;
	String creditcardanswer;

	// Constructor
	public HELP_MANUAL(String creditcardquestion, String creditcardanswer, boolean dummy) {
		super();

		this.creditcardquestion = creditcardquestion;
		this.creditcardanswer = creditcardanswer;

	}

	public HELP_MANUAL(String question, String answer) {
		super();

		this.question = question;
		this.answer = answer;

	}

	public HELP_MANUAL() {
	}

	// Getter Setter
	public String getCreditcardquestion() {
		return creditcardquestion;
	}

	public void setCreditcardquestion(String creditcardquestion) {
		this.creditcardquestion = creditcardquestion;
	}

	public String getCreditcardanswer() {
		return creditcardanswer;
	}

	public void setCreditcardanswer(String creditcardanswer) {
		this.creditcardanswer = creditcardanswer;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private static final String SELECT_ALL_GLFAQS = "SELECT * FROM helpmanual.goldloanfaqs";
	private static final String SELECT_ALL_CLFAQS = "SELECT * FROM helpmanual.creditcardfaqs;";

	/*
	 * Author: Hirthik Mathavan Reg. No: 18BCE2036 Function Name: PROVIDE_SUPPORT()
	 * Purpose: Fetches data from SQL database and stores them in an ArrayList.
	 * Arguments: - Return: List < Quesans >
	 */

	public List<HELP_MANUAL> PROVIDE_SUPPORT() throws ClassNotFoundException {

		List<HELP_MANUAL> faqsgl = new ArrayList<>();
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
				faqsgl.add(new HELP_MANUAL(question, answer));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return faqsgl;
	}

	/*
	 * Author: Hirthik Mathavan Reg. No: 18BCE2036 Function Name: PROVIDE_SUPPORT2()
	 * Purpose: Fetches data from SQL database and stores them in an ArrayList.
	 * Arguments: - Return: List < Quesans >
	 */

	public List<HELP_MANUAL> PROVIDE_SUPPORT2() throws ClassNotFoundException {

		List<HELP_MANUAL> faqscl = new ArrayList<>();
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
				faqscl.add(new HELP_MANUAL(creditcardquestion, creditcardanswer, true));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return faqscl;
	}

	/*
	 * Author: Hirthik Mathavan 
	 * Reg. No: 18BCE2036 
	 * Function Name: printSQLException() 
	 * Purpose: Prints Errors 
	 * Arguments: SQLException 
	 * Return: -
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
