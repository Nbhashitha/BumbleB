package com.InventoryManagementSystem.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.InventoryManagementSystem.Beans.RegisterBean;

public class UserDB {
	
	String dataCreationMessage = null;
	

	//Registration Page: Insert User Details
	public String insertUser(RegisterBean rg) {
		
		InventoryDb db = new InventoryDb();
		Connection con = db.getCon();
		
		//Get System Date and Time for Last Login
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now(); 
		
		try {
			Statement stmt = con.createStatement();
			stmt.execute("insert into userDetails (firstName,lastName,nicNo,dateOfBirth,role,lastLoginDate,password,email) "
					+ "values ('"+rg.getFname()+"','"+rg.getLname()+"','"+rg.getNicNo()+"','"+rg.getDob()+"','"+rg.getRole()+"',"
							+ "'"+dtf.format(now)+"','"+rg.getPassword()+"','"+rg.getEmail()+"')");
			dataCreationMessage = "User details are inserted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return dataCreationMessage;
	}
	
	public String getUserDetails(RegisterBean rg) {
		//boolean result = false;
		
		InventoryDb db = new InventoryDb();
		Connection con = db.getCon();
		ResultSet result;
		String email="invalid mail";
		
		try {
			Statement stmt = con.createStatement();
			result = stmt.executeQuery("select email,password,role from userDetails where email = '"+rg.getEmail()+"' "
					+ "and password = '"+rg.getPassword()+"'");
			
			System.out.println("result is: "+result);
			
			while(result.next()) {
				email = result.getString("email");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
			return email;

	}
}
