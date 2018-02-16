package com.niit.estore.frontend.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.model.User;

@Controller
public class HomeController {
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
	@RequestMapping(value="/products")
	public ModelAndView products() {
		ModelAndView mv=new ModelAndView("products");
		return mv;
	}
	@RequestMapping(value="/product")
	public ModelAndView product() {
		ModelAndView mv=new ModelAndView("product");
		return mv;
	}
	@RequestMapping(value="/add")
	public ModelAndView add() {
		ModelAndView mv=new ModelAndView("add");
		return mv;
	}
	
}