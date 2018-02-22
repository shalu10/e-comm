package com.niit.estore.backend.impl;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.estore.backend.dao.SupplierDao;

import com.niit.estore.backend.model.Supplier;
@Repository
public class SupplierImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(Supplier supplier) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(supplier);
		session.getTransaction().commit();
		session.close();
		
	}

	public void delete(int sid) {
		// TODO Auto-generated method stub
		
	}

	public Supplier findById(int sid) {
		
			return null;
		
		
	}

	public List<Supplier> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		Query query=s.createQuery("from Supplier");
		List<Supplier> list=query.list();
		System.out.println(list);
		s.getTransaction().commit();
		return list;
	}
	}


