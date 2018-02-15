package com.niit.estore.backend.dao;

import java.util.List;

import com.niit.estore.backend.model.User;

public interface UserDao {
	void save(User user);
	void delete(int id);
	User findById(int id);
	List<User> findAll();
}
