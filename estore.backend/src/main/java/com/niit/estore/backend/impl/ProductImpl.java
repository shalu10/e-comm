package com.niit.estore.backend.impl;

import java.util.List;




import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.estore.backend.dao.ProductDao;
import com.niit.estore.backend.model.Product;
@Repository
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
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(findById(pid));
		session.getTransaction().commit();
		session.close();
	}

	public Product findById(int pid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(Product.class);
		criteria.add(Restrictions.eq("pid", new Integer(pid)));
		List list=criteria.list();
		session.getTransaction().commit();
		session.close();
		if(!list.isEmpty()){
			return (Product)list.get(0);
		}else{
			return null;
		}
		
	}

	public List<Product> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		Query query=s.createQuery("from Product");
		List<Product> list=query.list();
		System.out.println(list);
		s.getTransaction().commit();
		return list;
	}

	public void update(Product product) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.saveOrUpdate(product);
		s.getTransaction().commit();
		s.close();
		
	}

}
