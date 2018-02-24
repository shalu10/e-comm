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
		/*String name=request.getParameter("pname");
		String quantity=request.getParameter("pquantity");
		String description=request.getParameter("pdesc");
		String price=request.getParameter("pprice");
		Product product=new Product();
		product.setPname(name);
		product.setPquantity(quantity);
		product.setPdesc(description);
		product.setPprice(price);
		*/
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
		/*mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("suppliers",supplierDao.findAll());
		mv.getModelMap().addAttribute("products",productDao.findAll());*/
		return mv;
	}	
}



