package com.InventoryManagementSystem.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.InventoryManagementSystem.Beans.RegisterBean;
import com.InventoryManagementSystem.Model.UserDB;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("jsp/RegistrationPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String nicNo = request.getParameter("nicNo");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String role = request.getParameter("role");
		String password = request.getParameter("password");
		
		RegisterBean rg =  new RegisterBean();
		rg.setFname(fname);
		rg.setLname(lname);
		rg.setNicNo(nicNo);
		rg.setDob(dob);
		rg.setEmail(email);
		rg.setPassword(password);
		rg.setRole(role);
		
		UserDB ud = new UserDB();
		String dataCreationMessage = ud.insertUser(rg);
		
		System.out.println(dataCreationMessage);	
	}
}
