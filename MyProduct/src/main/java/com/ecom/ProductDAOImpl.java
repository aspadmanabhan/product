package com.ecom;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory ctx;
	@Override
	public Product createProduct(String name, float price, int quantity) {
			
		Product obj=new Product();
		obj.setName(name);
		obj.setPrice(price);
		obj.setQuantity(quantity);
		ctx.getCurrentSession().save(obj);
		return obj ;
	}

}
