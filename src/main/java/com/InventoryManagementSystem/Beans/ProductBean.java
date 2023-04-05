package com.InventoryManagementSystem.Beans;

public class ProductBean {
	
	private String productName,productDescription,brand,category,image,price,quantity,color;
	
	

	public ProductBean() {
		super();
	}

	public ProductBean(String productName, String productDescription, String brand, String category, String image,
			String price, String quantity, String color) {
		super();
		this.productName = productName;
		this.productDescription = productDescription;
		this.brand = brand;
		this.category = category;
		this.image = image;
		this.price = price;
		this.quantity = quantity;
		this.color = color;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	

}
