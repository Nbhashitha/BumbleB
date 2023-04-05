<!DOCTYPE html>
<html>
<head>
<title>SignUp Page</title>
<style>
form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

input[type="text"], input[type="email"], input[type="password"] {
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
	border: none;
	box-shadow: 0px 0px 5px #ccc;
	width: 300px;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #0062cc;
}

#image-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100px;
}

#image-container img {
	max-width: 30%;
	max-height: 30%;
	object-fit: contain;
}
</style>
</head>
<body>
	<form action="http://localhost:8080/InventoryManagementSystem/ProductDetails" method="POST">
		<pre>
		<label for="productName">Product name:</label> 
		<input type="text" name="productName" id="productName" required> 
		
		<label for="productDescription">Product Description:</label> 
		<input type="text" name="productDescription" id="productDescription" required> 
		
		<label for="brand">Brand:</label> 
		<select	id="brand" name="brand" required>
			<option value="singer">Singer</option>
			<option value="panasonic" selected>Panasonic</option>
			<option value="sony">Sony</option>
		</select> 
		
		<label for="">Product category:</label> 
		<select id="category" name="category" required>
			<option value="tv">TV</option>
			<option value="radio" selected>Radio</option>
			<option value="phone">Phones</option>
		</select> 
		
		<label for="price">Product price:</label> 
		<input type="text" name="price" id="price" required> 
			
		<label for="quantity">Product quantity:</label> 
		<input type="text" name="quantity" id="quantity" required> 
		
		<label for="color">Product Color:</label> 
		<input type="text" name="color" id="color" required> 
		
		<label for="image">Product images:</label> 
		<input type="file" name="image" accept="image/*">

		<input type="submit" value="Add new Item">
		</pre>
	</form>
		<div id="image-container"></div>

	<script>
		const imageInput = document.getElementById('image');
		const imageContainer = document.getElementById('image-container');

		imageInput.addEventListener('change', function() {
			const file = imageInput.files[0];
			const reader = new FileReader();

			reader.addEventListener('load', function() {
				const image = new Image();
				image.src = reader.result;
				image.onload = function() {
					const aspectRatio = image.width / image.height;
					if (aspectRatio > 1) {
						imageContainer.style.width = '30%';
						imageContainer.style.height = '30%';
					} else {
						imageContainer.style.width = '30%';
						imageContainer.style.height = '30%';
					}
					imageContainer.innerHTML = '';
					imageContainer.appendChild(image);
				}
			});

			if (file) {
				reader.readAsDataURL(file);
			}
		});
	</script>
</body>
</html>