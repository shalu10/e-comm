package com.niit.estore.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.model.User;

@Controller
public class UserController {
	@RequestMapping(value="/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView ("login","command",new User());
		return mv;
	}

}
