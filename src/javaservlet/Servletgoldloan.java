	/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	Servletgoldloan.java
 * Purpose:       	Sends Data from helpmanual Database using FaqsDAO.java to index.jsp
 * Class Used by:   pagecontent.jsp; (gold)
 * Classes Used:    FaqsDAO.java, Quesans.java;
 */

package javaservlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/user-goldloan")
public class Servletgoldloan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FaqsDAO userDAO;

	public void init() {
		userDAO = new FaqsDAO();
	}
    
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servletgoldloan() {
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
			listFaqs(request, response);
		} catch (SQLException ex) {
			throw new ServletException(ex);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/*
	   * Author:       	Hirthik Mathavan
	   * Reg. No:       18BCE2036
	   * Function Name: listFaqs()
	   * Purpose:       Accesses the selectGoldloanFaqs method of FaqsDAO and stores them in a list object of Quesans and 
	   * 				dispatches it to index.jsp.
	   * Arguments:     HttpServletRequest; HttpServletResponse;
	   * Return:        -
	   */
	
	private void listFaqs(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException, ClassNotFoundException {
		List<Quesans> listFaqs = userDAO.selectGoldloanFaqs();
		request.setAttribute("listFaqs", listFaqs);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
