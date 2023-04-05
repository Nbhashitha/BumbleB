package com.InventoryManagementSystem.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.InventoryManagementSystem.Beans.ProductBean;
import com.InventoryManagementSystem.Model.ProductDB;

/*import java.io.File;
import java.io.FileInputStream;*/

/**
 * Servlet implementation class ProductDetails
 */
public class ProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("jsp/ProductCreation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		// Get Values of Request
		String productName = request.getParameter("productName");
		String productDescription = request.getParameter("productDescription");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String color = request.getParameter("color");
		String image = request.getParameter("image");

		ProductBean product = new ProductBean();
		product.setProductName(productName);
		product.setProductDescription(productDescription);
		product.setBrand(brand);
		product.setCategory(category);
		product.setPrice(price);
		product.setQuantity(quantity);
		product.setColor(color);
		product.setImage(image);

		// System.out.println(inputStream);

		ProductDB db = new ProductDB();
		String responseMessage = db.insertProduct(product);
		System.out.println(responseMessage);
	}

}
