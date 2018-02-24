package com.niit.estore.frontend.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.dao.CategoryDao;
import com.niit.estore.backend.dao.ProductDao;
import com.niit.estore.backend.dao.SupplierDao;
import com.niit.estore.backend.model.Category;
import com.niit.estore.backend.model.Supplier;


@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value="/addcategory", method=RequestMethod.GET)
	public ModelAndView addcategory() {
		ModelAndView mv=new ModelAndView("addcategory");
		List<Category> categories=categoryDao.findAll();
		List<Supplier> suppliers=supplierDao.findAll();

		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers",suppliers);
		return mv;
	}
	@RequestMapping(value="/addcategory", method=RequestMethod.POST)
	public ModelAndView addcategory(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("add");
		List<Category> categories=categoryDao.findAll();
		List<Supplier> suppliers=supplierDao.findAll();

		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers",suppliers);
		String name=request.getParameter("cname");
		String description=request.getParameter("cdesc");
		Category category=new Category();
		category.setCname(name);
		category.setCdesc(description);
		categoryDao.save(category);
		
		return mv;		
			
	}
	@RequestMapping(value="deletecategory", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int cid){
		ModelAndView mv=new ModelAndView("redirect:add");
		categoryDao.delete(cid);
		/*mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("suppliers",supplierDao.findAll());
		mv.getModelMap().addAttribute("products",productDao.findAll());*/
		return mv;
	}	
}
