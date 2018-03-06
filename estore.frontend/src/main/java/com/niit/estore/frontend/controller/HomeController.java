package com.niit.estore.frontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.dao.ProductDao;
import com.niit.estore.backend.model.Product;
import com.niit.estore.backend.model.User;

@Controller
public class HomeController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value="/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping(value="/index")
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping(value="/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	@RequestMapping(value="/products", method=RequestMethod.GET)
	public ModelAndView products() {
		ModelAndView mv=new ModelAndView("products");
		List<Product> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int productId) {
		ModelAndView mv=new ModelAndView("product");
		Product product =productDao.findById(productId);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
	@RequestMapping(value="/update")
	public ModelAndView update() {
		ModelAndView mv=new ModelAndView("update");
		return mv;
	}
	
/*	@RequestMapping(value="/add")
	public ModelAndView add() {
		ModelAndView mv=new ModelAndView("add");
		return mv;
	}*/
	
}