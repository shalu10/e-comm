package com.niit.estore.backend.dao;

import java.util.List;

import com.niit.estore.backend.model.Product;

public interface ProductDao {
	void save(Product product);
	void delete(int pid);
	Product findById(int pid);
	List<Product> findAll();
}
