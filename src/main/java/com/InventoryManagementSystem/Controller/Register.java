package com.InventoryManagementSystem.Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;

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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//request.getRequestDispatcher("jsp/RegistrationPage.jsp").forward(request, response);
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
		
		//Age Calculation
		LocalDate dobb = LocalDate.parse(request.getParameter("dob"));
		
		// Calculate the age
		Period age = Period.between(dobb, LocalDate.now());
		int years = age.getYears();
		
		System.out.println(years);
    	
		System.out.println("Input date: "+dob);
		System.out.println("Convert Date date: "+dobb);
		System.out.println("Calculated Date date: "+years);
		
        if(years>=18) {
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
    		response.sendRedirect("http://localhost:8080/InventoryManagementSystem/jsp/RegistrationPage.jsp");
        } 
        else {
        	response.sendRedirect("http://localhost:8080/InventoryManagementSystem/jsp/RegistrationError.jsp");
        }	
	}
}
