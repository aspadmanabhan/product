package com.ecom;

import java.util.List;

public interface ProductDAO {
	public Product createProduct(Product p);
  public Product updateProduct(Product p);
  public Product delete(Product p);
  public List<Product> getAllProducts();
}
