package com.niit.estore.backend.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.estore.backend.dao.ProductDao;
import com.niit.estore.backend.model.Product;

public class ProductImpl implements ProductDao{
	@Autowired
	private SessionFactory sessionFactory;
	public void save(Product product) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		session.close();
		
	}

	public void delete(int pid) {
		// TODO Auto-generated method stub
		
	}

	public Product findById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
