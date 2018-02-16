package com.niit.estore.backend.dao;

import java.util.List;

import com.niit.estore.backend.model.Category;

public interface CategoryDao {
	void save(Category category);
	void delete(int cid);
	Category findById(int cid);
	List<Category> findAll();
}
