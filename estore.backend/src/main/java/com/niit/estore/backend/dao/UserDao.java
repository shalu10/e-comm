package com.niit.estore.backend.dao;


import java.util.Set;

import com.niit.estore.backend.model.User;

public interface UserDao {
	void save(User user);
	void delete(int id);
	void update(User user);
	User findById(String email);
	boolean validate(String email,String password);
	Set<User> findAll();
}
