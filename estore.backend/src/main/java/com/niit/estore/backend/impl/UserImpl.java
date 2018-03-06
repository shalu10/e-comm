package com.niit.estore.backend.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
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
	

	public void update(User user) {
		// TODO Auto-generated method stub
		
	}

	public User findById(String email) {
		Session session=sessionFactory.openSession();
		String hql = "FROM User u WHERE u.email = '" + email +"'" ;
		Query query = session.createQuery(hql);
		List results=null;
		results = query.list();
	/*	List results = query.list();*/
		if(results!=null)
			return (User) results.get(0);
		else
		return null;
	}

	public boolean validate(String email, String password) {
		Session session=sessionFactory.openSession();
		String hql = "FROM User u WHERE u.email = '" + email +"' AND u.password ='" + password + "'" ;
		Query query = session.createQuery(hql);
		List results = query.list();
		if(results!=null)
			return true;
		else
		return false;
	}

	public Set<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}

