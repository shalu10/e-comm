package com.niit.estore.frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.dao.UserDao;
import com.niit.estore.backend.model.User;

@Controller
public class UserController {
@Autowired
private UserDao userDao;
@RequestMapping(value="/register", method=RequestMethod.GET)
public ModelAndView register(){
	ModelAndView mv=new ModelAndView("register");
	return mv;		
}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("index");
		String name=request.getParameter("uname");
		String contact=request.getParameter("ucontact");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		User user=new User();
		user.setName(name);
		user.setContact(contact);
		user.setEmail(email);
		user.setPassword(password);
		
		userDao.save(user);
		
		return mv;		
			
	}

}
