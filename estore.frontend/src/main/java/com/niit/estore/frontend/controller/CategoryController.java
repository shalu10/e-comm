package com.niit.estore.frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.dao.CategoryDao;
import com.niit.estore.backend.dao.UserDao;
import com.niit.estore.backend.model.Category;
import com.niit.estore.backend.model.User;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
	@RequestMapping(value="/addcategory", method=RequestMethod.GET)
	public ModelAndView addcategory() {
		ModelAndView mv=new ModelAndView("addcategory");
		return mv;
	}
	@RequestMapping(value="/addcategory", method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("index");
		String name=request.getParameter("cname");
		

		Category category=new Category();
		category.setCname(name);
		
		
		
		categoryDao.save(category);
		
		return mv;		
			
	}
}
