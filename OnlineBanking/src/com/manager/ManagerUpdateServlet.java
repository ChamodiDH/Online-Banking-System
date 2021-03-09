  package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manager.ManagerDBUtil;

/**
 * Servlet implementation class ManagerUpdateServlet
 */
@WebServlet("/ManagerUpdateServlet")
public class ManagerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String staffid = request.getParameter("sid");
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		
		
		boolean isTrue;
		isTrue = ManagerDBUtil.updatemanager(staffid, firstname, lastname, email, password);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("manager.jsp");
			dis.forward(request, response);
		}
	}

}
