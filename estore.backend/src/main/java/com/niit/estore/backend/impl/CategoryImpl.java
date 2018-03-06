package com.niit.estore.backend.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(findById(cid));
		session.getTransaction().commit();
		session.close();
	}

	public Category findById(int cid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(Category.class);
		criteria.add(Restrictions.eq("cid", new Integer(cid)));
		List list=criteria.list();
		session.getTransaction().commit();
		session.close();
		if(!list.isEmpty()){
			return (Category)list.get(0);
		}else{
			return null;
}
		
	}

	public List<Category> findAll() {
		
		Session session=sessionFactory.openSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> results =  query.list();
		System.out.println(results);
		//session.getTransaction().commit();
		return results;
	}

	public void update(Category category) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.saveOrUpdate(category);
		s.getTransaction().commit();
		s.close();		
		
		
	}

}
