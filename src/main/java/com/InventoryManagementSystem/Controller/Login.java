package com.InventoryManagementSystem.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.InventoryManagementSystem.Beans.RegisterBean;
import com.InventoryManagementSystem.Model.UserDB;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//request.getRequestDispatcher("jsp/LoginPage.jsp").forward(request, response);
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		System.out.println(email);
		
		RegisterBean rg =  new RegisterBean();
		rg.setEmail(email);
		rg.setPassword(password);
		
		
		
		UserDB ud = new UserDB();
		String dataCreationMessage = ud.getUserDetails(rg); 
		
		System.out.println(dataCreationMessage);
		
		if(dataCreationMessage.equalsIgnoreCase(email)) {
			response.sendRedirect("http://localhost:8080/InventoryManagementSystem/jsp/HomePage.jsp");
		}
		else {
			response.sendRedirect("http://localhost:8080/InventoryManagementSystem/jsp/LoginPage.jsp");
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
