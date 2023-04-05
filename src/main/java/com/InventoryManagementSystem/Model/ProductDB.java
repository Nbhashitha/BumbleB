package com.InventoryManagementSystem.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.InventoryManagementSystem.Beans.ProductBean;

public class ProductDB {
	
String productCreationMessage = null;
	

	//Registration Page: Insert User Details
	public String insertProduct(ProductBean product) {
		InventoryDb db = new InventoryDb();
		Connection con = db.getCon();
		
		//Get System Date and Time for Last Login
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now(); 
		
		try {
			Statement stmt = con.createStatement();
			stmt.execute("insert into ProductDetails (productName,productDescription,brand,category,price,quantity,color,image,createdDateTime) "
					+ "values ('"+product.getProductName()+"','"+product.getProductDescription()+"','"+product.getBrand()+"',"
							+ "'"+product.getCategory()+"','"+product.getPrice()+"','"+product.getQuantity()+"','"+product.getColor()+"',"
									+ "'"+product.getImage()+"','"+dtf.format(now)+"')");
			
			productCreationMessage = "Product details are inserted";
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return productCreationMessage;
	}

}
