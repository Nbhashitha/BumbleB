<!DOCTYPE html>
<html>
<head>
	<title>Inventory Management System</title>
	<style>
		/* Navigation bar style */
		nav {
			background-color: #333;
			overflow: hidden;
		}

		nav a {
			float: left;
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			font-size: 17px;
		}

		nav a:hover {
			background-color: #ddd;
			color: black;
		}

		.active {
			background-color: #4CAF50;
			color: white;
		}

		/* Responsive design */
		@media screen and (max-width: 600px) {
			nav a:not(:first-child) {
				display: none;
			}

			nav a.icon {
				float: right;
				display: block;
			}
		}

		@media screen and (max-width: 600px) {
			nav.responsive {
				position: relative;
			}

			nav.responsive a.icon {
				position: absolute;
				right: 0;
				top: 0;
			}

			nav.responsive a {
				float: none;
				display: block;
				text-align: left;
			}
		}
	</style>
</head>
<body>
	<!-- Navigation bar -->
	<nav>
		<a class="active" href="#home">Home</a>
		<a href="#services">Services</a>
		<a href="http://localhost:8080/InventoryManagementSystem/jsp/ProductCreation.jsp">Cart</a>
		<a href="http://localhost:8080/InventoryManagementSystem/jsp/RegistrationPage.jsp">SignUp</a>
		<a href="http://localhost:8080/InventoryManagementSystem/jsp/LoginPage.jsp">Login</a>
		<a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
	</nav>

	<script>
		/* Function for responsive design */
		function myFunction() {
			var x = document.getElementsByTagName("nav")[0];
			if (x.className === "") {
				x.className += "responsive";
			} else {
				x.className = "";
			}
		}
	</script>
</body>
</html>