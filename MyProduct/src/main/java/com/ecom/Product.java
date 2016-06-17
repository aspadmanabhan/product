package com.ecom;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Product {
	private String name;
	private float price;
	private int quantity;
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

}
