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
import com.niit.estore.backend.dao.ProductDao;
import com.niit.estore.backend.dao.SupplierDao;
import com.niit.estore.backend.model.Category;
import com.niit.estore.backend.model.Product;
import com.niit.estore.backend.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addproduct() {
		ModelAndView mv=new ModelAndView("add");
		
		List<Category> categories=categoryDao.findAll();
		List<Supplier> suppliers=supplierDao.findAll();
		List<Product> products=productDao.findAll();
		
		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers",suppliers);
		mv.getModelMap().addAttribute("products",products);
		
		//mv.addObject("categories", categories);
		//mv.addObject("suppliers", suppliers);
		
		
		return mv;
	}
	@RequestMapping(value="/addproduct", method=RequestMethod.POST)
	public ModelAndView addproduct(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("add");
		
		Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cid")));
		Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
	 		Product product =new Product();
	 		product.setPname(request.getParameter("pname"));
	 		product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
	 		product.setPdesc(request.getParameter("pdesc"));
	 		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
	 		product.setPimage(request.getParameter("pimage"));
	 		
	 		product.setCid(category);
	 		product.setSid(supplier);
	 		productDao.save(product);
	 		
	 		return mv;
	}
	
	@RequestMapping(value="deleteproduct", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int pid){
		ModelAndView mv=new ModelAndView("redirect:add");
		productDao.delete(pid);
		
		return mv;
	}	
	@RequestMapping(value="/updateproduct", method=RequestMethod.GET)
	public ModelAndView Update(Model model,@RequestParam("id") int pid){
		ModelAndView mv=new ModelAndView("update");
		Product products=productDao.findById(pid);
		mv.getModelMap().addAttribute("products", products);
		mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("suppliers", supplierDao.findAll());
		return mv;
}
	
	@RequestMapping(value="/updateproduct", method=RequestMethod.POST)
	
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("add");
		Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cid")));
		Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
		Product product =new Product();
		product.setPid(Integer.parseInt(request.getParameter("pid")));
		product.setPname(request.getParameter("pname"));
		product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
		product.setPdesc(request.getParameter("pdesc"));
		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
		product.setPimage(request.getParameter("pimage"));
		product.setCid(category);
		product.setSid(supplier);
		productDao.update(product);
		/*mv.getModelMap().addAttribute("products", productDao.findAll());*/
		return mv;
		
	 }
	/*@RequestMapping(value="/cart", method=RequestMethod.GET)
	public ModelAndView cart(Model model,@RequestParam("id") int pid){
		ModelAndView mv=new ModelAndView("cart");
		mv.getModelMap().addAttribute("c", productDao.findById(pid));
		
		return mv;
}*/
}




