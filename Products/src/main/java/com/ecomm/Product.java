package com.ecomm;

public class Product {
	private String name;
	private String price;
	private String quantity;
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
	public void setPrice(String price)
	{
		this.price=price;
		
	}
	public void setQuantity(String quantity)
	{
		this.quantity=quantity;
	}
	public String getName()
	{
		return name;
	}
	public String getPrice()
	{
		return price;
	}
	public String getQuantity()
	{
		return quantity;
	}

}
