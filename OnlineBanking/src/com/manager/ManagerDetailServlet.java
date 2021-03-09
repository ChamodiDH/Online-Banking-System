package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.manager.Manager;
import com.manager.ManagerDBUtil;

/**
 * Servlet implementation class ManagerDetailServlet
 */
@WebServlet("/ManagerDetailServlet")
public class ManagerDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	    String staffId =(String) session.getAttribute("staffId");
	    /*String password = request.getParameter("password");*/
	    
		
	    try {
      	  List<Manager> manDetails = ManagerDBUtil.view(staffId);
      	  request.setAttribute("manDetails", manDetails);
	    }
	    catch (Exception e) {
		e.printStackTrace();
	    }
	    
	    
	    RequestDispatcher dis = request.getRequestDispatcher("managerDetail.jsp");
	    dis.forward(request, response);    
	}

}
