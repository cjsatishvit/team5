/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	InsertDatacreditcardloan.java
 * Purpose:       	Receives ratings(with question number as feedbackid) from creditcard.jsp and stores them
 * 					in database using RatingFeedback.java class.
 * Class Used by:   creditcard.jsp
 * Classes Used:    DatabaseConnection.java
 */

package javaservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertDatacreditcard
 */
@WebServlet("/InsertDatacreditcard")
public class InsertDatacreditcardloan extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    /**
     * @see HttpServlet#HttpServlet()
     */
	public InsertDatacreditcardloan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {

			// Initialize the database Connection
			Connection con = DatabaseConnection.initializeDatabase();

			// Create a SQL query to insert data into feedback.creditcardloan table //
			// feedback.creditcardloan table consists of two columns, so two '?' is used
			PreparedStatement st = con
					.prepareStatement("insert into feedback.creditcardloan (feedbackid,`star rating`) values(?, ?)");

			// get the data using request object // sets the data to st pointer
			Ratingfeedback register = new Ratingfeedback(Integer.parseInt(request.getParameter("quesn")),
					Integer.parseInt(request.getParameter("rating")), true);

			st.setInt(1, register.getClfeedbackid());
			st.setInt(2, register.getClrating());

			// Execute the insert command using executeUpdate() // to make changes
			// indatabase
			st.executeUpdate();

			// Get a writer pointer // to display the successful result
			PrintWriter out = response.getWriter();
			out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
