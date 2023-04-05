<!DOCTYPE html>
<html>
<head>
	<title>SignUp Page</title>
	
</head>
<body>
	<form action="http://localhost:8080/InventoryManagementSystem/Register" method="POST">
	<pre>
		<label for="fname">First Name:</label>
		<input type="text" name="fname" id="fname" required>
		
		<label for="lname">Last Name:</label>
		<input type="text" name="lname" id="lname" required>
		
		<label for="nicNo">Identity Card Number:</label>
		<input type="text" name="nicNo" id="nicNo" required>
		
		<label for="dateTime">Date of Birth:</label>
		<input type="date" name="dob" id="dob" required>
		
		<label for="email">Email Address:</label>
		<input type="email" name="email" id="email" required>
		
		<label for="password">Password:</label>
		<input type="password" name="password" id="password" required>
		
		<label for="role">Role:</label>
		<select id="role" name="role">
		  <option value="admin">Admin</option>
		  <option value="customer" selected>Customer</option>
		  <option value="supplier">Supplier</option>
		</select>
		
		<input type="submit" value="Sign Up">
		</pre>
    </form>
    
	
</body>
</html>