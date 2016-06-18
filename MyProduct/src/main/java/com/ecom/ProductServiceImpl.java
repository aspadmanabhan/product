package com.ecom;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO dao;
	@Override
	public Product createProduct(Product p) {
		
		return dao.createProduct(p);
		// TODO Auto-generated method stub
		
	}
	public Product updateProduct(Product p)
	{
		return dao.updateProduct(p);
	}
	public Product deleteProduct(Product p)
	{
		return dao.delete(p);
	}
	public List<Product> getAllProducts()
	{
	return dao.getAllProducts();	
	}
}
