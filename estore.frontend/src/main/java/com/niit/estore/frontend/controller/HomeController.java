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
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	
}