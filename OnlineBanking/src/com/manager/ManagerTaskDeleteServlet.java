package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ManagerTaskDeleteServlet
 */
@WebServlet("/ManagerTaskDeleteServlet")
public class ManagerTaskDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String staffId = request.getParameter("employeeID");
		
		boolean isTrue;
		isTrue = ManagerDBUtil.deletetasklist(staffId);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("manager.jsp");
			dis.forward(request, response);
		}
	}

}
