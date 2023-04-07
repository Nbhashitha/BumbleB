<!DOCTYPE html>
<html>
<head>
<title>Product Creation Page</title>
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
					<li class="nav-item mx-2"><a class="nav-link "
						aria-current="page" href="http://localhost:8080/InventoryManagementSystem/jsp/HomePage.jsp">Dashboard</a></li>
					<li class="nav-item mx-2"><a class="nav-link"
						href="http://localhost:8084/InventoryManagementSystem/jsp/RegistrationPage.jsp">Customers</a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link active"
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
<form action="http://localhost:8080/InventoryManagementSystem/ProductDetails" method="POST">
		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<label for="productName">Product name:</label> 
		<input type="text" class="form-control" name="productName" id="productName" required> 
			</div>
			<div class="col-4">
				<label for="productDescription">Product Description:</label> 
		<input type="text" class="form-control" name="productDescription" id="productDescription" required>
			</div>
		</div>
		
		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<label for="brand">Brand:</label> 
		<select	id="brand" class="form-control" name="brand" required>
		<option value="choose" selected>Choose...</option>
			<option value="singer">Singer</option>
			<option value="panasonic" >Panasonic</option>
			<option value="sony">Sony</option>
		</select> 
				
			</div>
			<div class="col-4">
				<label for="">Product category:</label> 
		<select id="category" class="form-control" name="category" required>
			<option value="choose" selected>Choose...</option>
			<option value="tv">TV</option>
			<option value="radio" >Radio</option>
			<option value="phone">Phones</option>
		</select> 
			</div>
		</div>
		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<label for="price">Product price:</label> 
		<input type="text" class="form-control" name="price" id="price" required> 
			</div>
			<div class="col-4">
				<label for="quantity">Product quantity:</label> 
		<input type="text" class="form-control" name="quantity" id="quantity" required> 
			</div>
		</div>
		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<label for="color">Product Color:</label> 
		<input type="text" class="form-control" name="color" id="color" required> 
			</div>
			<div class="col-4">
				<label for="image">Product images:</label> 
		<input type="file" class="form-control" name="image" accept="image/*">
			</div>
			
		</div>
		<div class="form-row row d-flex d-flex justify-content-center mt-5 ">
			<div class="col-4">
				<button class="btn btn-primary" value="Add new Item">Create</button>
			</div>
			<div class="col-4">
				
			</div>
		</div>
		<div id="image-container"></div>
	</form>
		

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>

	<script src="../js/products.js"></script>
</body>
</html>