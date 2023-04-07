<!DOCTYPE html>
<html>
<head>
<title>SignUp Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand bold p-3" href="#"> <img
				src="https://cdn-icons-png.flaticon.com/512/2331/2331966.png" alt=""
				width="30" height="24" class="d-inline-block align-text-top mr-3">
				BumbleB
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse d-flex justify-content-end"
				id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item mx-2"><a class="nav-link active"
						aria-current="page" href="#">Dashboard</a></li>
					<li class="nav-item mx-2"><a class="nav-link"
						href="http://localhost:8084/InventoryManagementSystem/jsp/RegistrationPage.jsp">Customers</a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link"
						href="http://localhost:8084/InventoryManagementSystem/jsp/ProductCreation.jsp">Products</a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link" href="#">Suppliers</a>
					</li>
					<div class="dropdown mx-2">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
							aria-expanded="false"> Hi Navodya </a>

						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item"
								href="http://localhost:8084/InventoryManagementSystem/jsp/LoginPage.jsp">Sign
									Out</a></li>
						</ul>
					</div>
				</ul>
			</div>
		</div>
	</nav>

	<form action="http://localhost:8080/InventoryManagementSystem/Register"
		method="POST">
		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<label for="fname">First Name:</label> <input type="text"
					class="form-control" name="fname" id="fname" required>
			</div>
			<div class="col-4">
				<label for="lname">Last Name:</label> <input type="text"
					class="form-control" name="lname" id="lname" required>
			</div>
		</div>

		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">

				<label for="email">Email Address:</label> <input type="email"
					class="form-control" name="email" id="email" required>
			</div>
			<div class="col-4">
				<label for="password">Password:</label> <input type="password"
					class="form-control" name="password" id="password" required>
			</div>
		</div>

		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<label for="nicNo">Identity Card Number:</label> <input type="text"
					class="form-control" name="nicNo" id="nicNo" required>
			</div>
			<div class="col-2">

				<label for="dateTime">Date of Birth:</label> <input type="date"
					name="dob" class="form-control" id="dob" required>
			</div>
			<div class="col-2">
				<label for="role">Role:</label> <select id="role"
					class="form-control" aria-labelledby="dropdownMenuButton"
					name="role">
					<option selected>Choose...</option>
					<option value="admin">Admin</option>
					<option value="customer">Customer</option>
					<option value="supplier">Supplier</option>
				</select>
			</div>
		</div>

		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-8">
				<div class="alert alert-danger" role="alert">Age Restriction: You are not Eligible to buy products</div>
			</div>
		</div>



		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">

				<button type="submit" class="btn btn-primary">Sign Up</button>
			</div>
			<div class="col-4"></div>
		</div>

	</form>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script src="../js/Home.js"></script>
</body>
</html>