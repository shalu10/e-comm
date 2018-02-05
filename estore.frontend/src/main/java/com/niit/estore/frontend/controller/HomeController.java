package com.niit.estore.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.model.User;

@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}

}
