package com.ecom;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class PersonalComputer  implements Serializable{
	@Id
	@GeneratedValue
	private int ProductId;
	@NotEmpty(message = "Please enter Product Name.")
	private String productName;
	@NotNull(message = "Please enter price .")
	private Float price;
	@NotNull(message = "Please enter quantity.")
	private Float quantity;
	@NotEmpty(message = "Please enter description.")
	private String description;
	@NotEmpty(message = "Please enter image name .")
	private String imageUrl;

	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Float getQuantity() {
		return quantity;
	}
	public void setQuantity(Float quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	

}
