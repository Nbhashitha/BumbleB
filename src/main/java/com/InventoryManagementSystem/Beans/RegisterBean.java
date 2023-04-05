package com.InventoryManagementSystem.Beans;

public class RegisterBean {
	

	
	private String 	fname,
					lname,
					nicNo,
					dob,
					email,
					password,
					role;
	
	
	public RegisterBean() {
		super();
	}
	
	public RegisterBean(String fname, String lname, String nicNo, String dob, String email, String password,String role) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.nicNo = nicNo;
		this.dob = dob;
		this.email = email;
		this.password = password;
		this.role = role;
	}	

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getNicNo() {
		return nicNo;
	}

	public void setNicNo(String nicNo) {
		this.nicNo = nicNo;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
