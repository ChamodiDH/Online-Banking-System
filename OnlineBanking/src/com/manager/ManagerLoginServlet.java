package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.manager.ManagerDBUtil;

/**
 * Servlet implementation class ManagerLoginServlet
 */
@WebServlet("/ManagerLoginServlet")
public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String staffId = request.getParameter("sid");
		String password = request.getParameter("pw");

		try {
			boolean isTrue;
			isTrue = ManagerDBUtil.validate(staffId,password);
			
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("manager.jsp");
				dis.forward(request, response);
				HttpSession session = request.getSession();
				session.setAttribute("staffId", staffId);
				
			}else{
				
				RequestDispatcher dis = request.getRequestDispatcher("managerloginunsuccess.jsp");
				dis.forward(request, response);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
