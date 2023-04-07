<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="../css/HomePage.css">
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand bold p-3" href="#"> <img
				src="https://cdn-icons-png.flaticon.com/512/2331/2331966.png" alt="" width="30"
				height="24" class="d-inline-block align-text-top mr-3">  BumbleB 
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
					<li class="nav-item mx-2"><a class="nav-link" href="http://localhost:8084/InventoryManagementSystem/jsp/RegistrationPage.jsp">Customers</a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link" href="http://localhost:8084/InventoryManagementSystem/jsp/ProductCreation.jsp">Products</a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link" href="#">Suppliers</a>
					</li>
					<div class="dropdown mx-2">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
							aria-expanded="false"> Hi Navodya </a>

						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="http://localhost:8084/InventoryManagementSystem/jsp/LoginPage.jsp">Sign Out</a></li>
						</ul>
					</div>
				</ul>
			</div>
		</div>
	</nav>
	<div class="bg-light text-black">
		<div class="card-body">
			<h5>Hi Navodya, Welcome to the Dashboard</h5>
		</div>
	</div>

	<!-- Tiles -->
	<div class="container">
		<div class="row">
			<div class="mt-5 col-4 d-flex justify-content-between">
				<div class="card p-3 shadow rounded"
					style="width: 25rem; background-color: #99FFCC;">
					<div class="row align-middle">
						<div class="col-4">
							<img
								src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-512.png"
								class="image rounded float-left" alt="..."
								style="width: 100%; height: 100%;">
						</div>
						<div class="col-8 ">
							<p class=" bold text-center">Number of Customers</p>
							<p class="lgfont text-center">10</p>
						</div>
					</div>
				</div>
			</div>
			<div class="mt-5 col-4 d-flex justify-content-between">
				<div class="card p-3 shadow rounded"
					style="width: 25rem; background-color: #FFCC99;">
					<div class="row">
						<div class="col-4 align-middle">
							<img
								src="https://cdn-icons-png.flaticon.com/512/4129/4129528.png"
								class="image rounded float-left" alt="..."
								style="width: 100%; height: 100%;">
						</div>
						<div class="col-8">
							<p class=" bold text-center">Number of Products</p>
							<p class="lgfont text-center">10</p>
						</div>
					</div>
				</div>
			</div>
			<div class="mt-5 col-4 d-flex justify-content-between">
				<div class="card shadow rounded p-3"
					style="width: 25rem; background-color: #FFFF99;">
					<div class="row align-middle">
						<div class="col-4">
							<img src="https://img.icons8.com/color/512/supplier.png"
								class="image rounded float-left" alt="..."
								style="width: 100%; height: 100%;">
						</div>
						<div class="col-8">
							<p class=" bold text-center">Number of Suppliers</p>
							<p class="lgfont text-center">10</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-8">
				<div id="myChart" class="d-flex justify-content-center mx-auto mt-3"
					style="width: 100%; max-width: 1000px; height: 500px;"></div>
			</div>
			<div class="col-4">
				<div id="pieChart" class="d-flex justify-content-center mx-auto mt-3"
					style="width: 100%; max-width: 600px; height: 500px;"></div>
			</div>
		</div>
	</div>




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
