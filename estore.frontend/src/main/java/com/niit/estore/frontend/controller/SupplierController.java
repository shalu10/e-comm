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

import com.niit.estore.backend.dao.CategoryDao;
import com.niit.estore.backend.dao.SupplierDao;
import com.niit.estore.backend.model.Category;
import com.niit.estore.backend.model.Supplier;


@Controller
public class SupplierController {
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	private CategoryDao categoryDao;
	
	@RequestMapping(value="/addsupplier", method=RequestMethod.GET)
	public ModelAndView addsupplier() {
		ModelAndView mv=new ModelAndView("addsupplier");
		List<Category> categories=categoryDao.findAll();
		List<Supplier> suppliers=supplierDao.findAll();

		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers",suppliers);
		return mv;
	}
	@RequestMapping(value="/addsupplier", method=RequestMethod.POST)
	public ModelAndView addsupplier(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("add");
		List<Category> categories=categoryDao.findAll();
		List<Supplier> suppliers=supplierDao.findAll();

		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers",suppliers);
		String name=request.getParameter("sname");
		String contact=request.getParameter("scontact");
		String email=request.getParameter("semail");
		String address=request.getParameter("saddress");
		
		
		Supplier supplier=new Supplier();
		
		supplier.setSname(name);
		supplier.setScontact(contact);
		supplier.setSemail(email);
		supplier.setSaddress(address);
		
		
		supplierDao.save(supplier);
		
		return mv;		
			
	}
	@RequestMapping(value="deletesupplier", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int sid){
		ModelAndView mv=new ModelAndView("redirect:add");
		supplierDao.delete(sid);
		/*mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("suppliers",supplierDao.findAll());
		mv.getModelMap().addAttribute("products",productDao.findAll());*/
		return mv;
	}	
	@RequestMapping(value="/updatesupplier", method=RequestMethod.GET)
	public ModelAndView viewUpdateSupplier(Model model,@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("update");
		Supplier supplier=supplierDao.findById(id);
		mv.getModelMap().addAttribute("suppliers", supplier);
		return mv;
	}
	
	@RequestMapping(value="/updatesupplier", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateSupplier(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("add");
		Supplier supplier=new Supplier();
		supplier.setSid(Integer.parseInt(request.getParameter("sid")));
		supplier.setSname(request.getParameter("sname"));
		supplier.setSemail(request.getParameter("semail"));
		supplier.setSaddress(request.getParameter("saddress"));
		supplier.setScontact(request.getParameter("scontact"));
		supplierDao.update(supplier);
		/*mv.getModelMap().addAttribute("stock", supplierDao.findAll());*/
		return mv;
		
	 }
}


