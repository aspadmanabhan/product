package com.ecom;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Product {
	private String name;
	private float price;
	private int quantity;
	private String description;
	@Id
	@GeneratedValue
	private int id;
	public void setId(int id)
	{
		this.id=id;
	}
	
	public int getId()
	{
		return id;
	}
	public void  setName(String name)
	{
		this.name=name;
		
	}
	public void setPrice(float price)
	{
		this.price=price;
		
	}
	public void setQuantity(int quantity)
	{
		this.quantity=quantity;
	}
	public String getName()
	{
		return name;
	}
	public float getPrice()
	{
		return price;
	}
	public int getQuantity()
	{
		return quantity;
	}
	public void setDescription(String description)
	{
		this.description=description;
	}
	public String getDescription()
	{
		return description;
	}

}
