package com.niit.estore.frontend.controller;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
		ModelAndView mv=new ModelAndView("login");
		String name=request.getParameter("uname");
		String contact=request.getParameter("ucontact");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		User user=new User();
		user.setName(name);
		user.setContact(contact);
		user.setEmail(email);
		user.setPassword(password);
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		
		userDao.save(user);
		
		return mv;		
			
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		User user=userDao.findById(email);	
		//request.setAttribute("customer", customer );
		//String page=request.getRequestURI();
		ModelAndView mv=null;
		if(user!=null){
			HttpSession session=request.getSession(true);
			session.setAttribute("name", user.getName());
			session.setAttribute("user", user);

				mv=new ModelAndView("/");
			}
			
		
		else{
			mv=new ModelAndView("redirect:failure");		
			
		}			
		return mv;
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response){
		HttpSession session=request.getSession(false);
		SecurityContextHolder.clearContext();
		if(session!=null)
			session.invalidate();
		ModelAndView mv=new ModelAndView("redirect:./");
		return mv;
	}
	@RequestMapping(value="/failure", method=RequestMethod.GET)
	public ModelAndView failure(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("failure");
		return mv;
	}
	}



