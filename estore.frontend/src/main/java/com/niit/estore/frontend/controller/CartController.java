package com.niit.estore.frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.estore.backend.dao.ProductDao;
import com.niit.estore.backend.model.Cart;
import com.niit.estore.backend.model.CartItem;
import com.niit.estore.backend.model.Category;
import com.niit.estore.backend.model.Product;
import com.niit.estore.backend.model.Supplier;

@Controller
public class CartController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public ModelAndView getCartItems(Model model,HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("cart");
		return mv;

}
	
	@RequestMapping(value="/checkout", method=RequestMethod.GET)
	public ModelAndView check(Model model,HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("checkout");
		return mv;
	}
	
	@RequestMapping(value="addToCart", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid, @RequestParam("txtQuantity") int quantity, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("redirect:products");
		Product product =productDao.findById(pid);
		/*int stock=product.getPstock();*/
		HttpSession session=request.getSession(false);
		Cart cart=null;
		if(session!=null){
			cart=(Cart) session.getAttribute("cart");
			CartItem item=new CartItem();
			item.setProduct(product);
			item.setQuantity(quantity);			
			if(cart==null){				
				cart=new Cart();	
			}
			boolean state=false;
			for(CartItem c : cart.getItems()){
				if(c.getProduct().getPname().equals(product.getPname())){
					c.setQuantity(quantity+c.getQuantity());
					/*if(product.getPquantity()!=0) {
					c.setQuantity(item.getQuantity());*/
					state=true;
					
				}
			}
			if(!state)
			cart.getItems().add(item);
		}	
		
		session.setAttribute("cart", cart);
		session.setAttribute("cartItems", cart.getItems());
		return mv;
	}
	
	@RequestMapping(value="deleteitem", method=RequestMethod.GET)
	public ModelAndView delete(Model model,@RequestParam("id") int pid, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("redirect:products");
		Product product =productDao.findById(pid);
		HttpSession session=request.getSession(false);
		Cart cart=null;
		if(session!=null){
			cart=(Cart) session.getAttribute("cart");
			CartItem item=new CartItem();
			try {
			for(CartItem c : cart.getItems()){
				if(c.getProduct().getPname().equals(product.getPname())){
					item=cart.getItems().set(c.getId(), c);
					cart.getItems().remove(item);					
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		}session.setAttribute("cart", cart);
			return mv;
	}
	/*@RequestMapping(value="deleteitem", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int pid){
		ModelAndView mv=new ModelAndView("redirect:add");
		productDao.delete(pid);
		mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("suppliers",supplierDao.findAll());
		mv.getModelMap().addAttribute("products",productDao.findAll());
		return mv;
	}	*/
}
