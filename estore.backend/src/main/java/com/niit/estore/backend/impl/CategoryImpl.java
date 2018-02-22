package com.niit.estore.backend.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.estore.backend.dao.CategoryDao;
import com.niit.estore.backend.model.Category;

@Repository
public class CategoryImpl implements CategoryDao {
@Autowired
private SessionFactory sessionFactory;
	public void save(Category category) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(category);
		session.getTransaction().commit();
		session.close();
		
	}

	public void delete(int cid) {
		// TODO Auto-generated method stub
		
	}

	public Category findById(int cid) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Category> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		Query query=s.createQuery("from Category");
		List<Category> list=query.list();
		System.out.println(list);
		s.getTransaction().commit();
		return list;
	}

}
