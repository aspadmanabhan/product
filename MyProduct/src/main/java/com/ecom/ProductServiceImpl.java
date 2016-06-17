package com.ecom;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ProductServiceImpl implements ProductDAO {

	@Autowired(required=false)
	ProductDAO dao;
	@Override
	public Product createProduct(String name, float price, int quantity) {
		
		return dao.createProduct(name, price, quantity);
		// TODO Auto-generated method stub
		
	}

}
