package com.ecom;

import java.util.List;

public interface ProductService {
	public Product createProduct(Product p);
    public Product updateProduct( Product p);
    public Product deleteProduct(Product p);
    public List<Product> getAllProducts();
}
