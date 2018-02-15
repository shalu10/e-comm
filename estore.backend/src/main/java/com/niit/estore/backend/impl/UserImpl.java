package com.niit.estore.backend.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.estore.backend.dao.UserDao;
import com.niit.estore.backend.model.User;


@Repository
public class UserImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void save(User user) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}

	public void delete(int id) {
	
	}
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<User> findAll() {	
		return null;
	}

}

