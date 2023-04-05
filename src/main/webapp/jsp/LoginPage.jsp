<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign In Page</title>
	<link rel="stylesheet" type="text/css" href="../css/Login.css">
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>

<div class="container">
		<h1>Sign In</h1>
		<form action="http://localhost:8080/InventoryManagementSystem/Login">
			<label for="username">Username</label>
			<input type="text" id="email" name ="email" placeholder="Enter username" required> 

			<label for="password">Password</label>
			<input type="password" id="password" name ="password" placeholder="Enter password" required>

			<button type="submit" id="signin-btn">Sign In</button>
			
			<label for="password"><%= request.getAttribute("message") %></label>
		</form>
		<div class="signup-container">
			<p>Don't have an account?</p>
			<button id="signup-btn">Sign Up</button>
		</div>
	</div>

<script src="../js/Login.js"></script>
</body>
</html>