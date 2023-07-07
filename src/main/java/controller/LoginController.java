package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.DAOAccount;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		
		if (request.getParameter("submit") != null && 
			request.getParameter("submit").equals("Login")) {
			
			Account account = new Account(
					request.getParameter("username"), 
					request.getParameter("password"));
			
			DAOAccount daoaccount = new DAOAccount();
			
			
			if (daoaccount.Auth(account)) {
				 HttpSession session=request.getSession();  
	        	 session.setAttribute("user",account.getUsername()); 
	        	 session.setAttribute("pass",account.getPassword());  
	        
				request.getRequestDispatcher("wellcome.jsp").forward(request, response);
			}else {
			 HttpSession session=request.getSession();  
			 session.setAttribute("user",account.getUsername()); 
        	 session.setAttribute("pass",account.getPassword());    
        	 request.getRequestDispatcher("login.jsp").forward(request, response);
//        	 request.getRequestDispatcher("fail.jsp").forward(request, response);
		}
		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
