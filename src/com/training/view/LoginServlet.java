package com.training.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.dao.BankOfDanishDAO;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		{
			String username = request.getParameter("username");
			String password = request.getParameter("passcode");
			//HttpSession session = request.getSession(true);
			//session.setAttribute("user", username);
			//session.setAttribute("password", password);
			boolean doesuserexist = BankOfDanishDAO.validateUser(username, password);
			
			if(doesuserexist) { 
				
				RequestDispatcher dispatch  = getServletContext().getRequestDispatcher("/welcomeuser.jsp");
				if(dispatch != null) { 
					dispatch.forward(request, response);
				}
				System.out.println("Show him welcome page");
			}
			
			else {
				// If the user is invalid forward ot tp registrage page
				System.out.println("Show him registration page");
			}
			

		}

	}
}
