package com.niit.estore.backend.dao;

import java.util.List;


import com.niit.estore.backend.model.Supplier;

public interface SupplierDao {
	void save(Supplier supplier);
	void delete(int sid);
	void update(Supplier supplier);
	Supplier findById(int sid);
	List<Supplier> findAll();
}
