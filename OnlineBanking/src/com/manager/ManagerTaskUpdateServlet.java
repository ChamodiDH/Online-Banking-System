package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ManagerTaskUpdateServlet
 */
@WebServlet("/ManagerTaskUpdateServlet")
public class ManagerTaskUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String staffid = request.getParameter("staffId");
		String name = request.getParameter("name");
		String department = request.getParameter("department");
		String duty = request.getParameter("duty");
		
		boolean isTrue;
		isTrue = ManagerDBUtil.updatetasklist(staffid, name, department, duty);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("manager.jsp");
			dis.forward(request, response);
		}
	}

}
