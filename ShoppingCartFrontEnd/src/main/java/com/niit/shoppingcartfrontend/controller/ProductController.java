package com.niit.shoppingcartfrontend.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcartfrontend.util.FileUtil;
import com.niit.shoppingcartfrontend.util.Util;




@Controller
public class ProductController {
	
	Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO; 
	
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired(required=true)
	private UserDAO userDAO;
	
	private String path = "C:\\Users\\Hari\\Pictures\\image\\";
	
	@RequestMapping(value = "/Products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("isAdminClickedProduct", "true");
		model.addAttribute("product", product);
		model.addAttribute("category",new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		return "home";
	}

	@RequestMapping(value = "/to_add_product", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("product") Product product) {
		
System.out.println(product.getId() +"\n" +product.getName() +"\n" + product.getPrice() +"\n" + product.getDescription() +"\n" +  categoryDAO.getByName(product.getCategory().getName()) +"\n" +  supplierDAO.getByName(product.getSupplier().getName()));
		
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category); 

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier); 

		product.setCategory(category);
		product.setSupplier(supplier);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());   
		
		String newID= Util.removeComma(product.getId());
		product.setId(newID);
		
		productDAO.saveOrUpdate(product);
 
		MultipartFile file=product.getImage();
		FileUtil.upload(path, file,product.getId()+".jpg");
		
		return "redirect:/Products";
	}
	
	@RequestMapping(value = "product/remove/{id}")
	public String deleteProducts(@PathVariable("id") String id,ModelMap model) {
		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/Products";
	}
	
	
	@RequestMapping(value = "product/edit/{id}")
	public String editProducts(@PathVariable("id") String id,ModelMap model) {
		product=productDAO.get(id);
		model.addAttribute("product", product);
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList",supplierDAO.list());

		return "redirect:/Products";
	}

	@RequestMapping(value= "product/get/addc/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id){
		
	System.out.println("*****************#####################");
	 Product product =	 productDAO.get(id);
	 Cart cart = new Cart();
	 cart.setPrice(product.getPrice());
	 //cart.setProductName(product.getName());
	 cart.setQuantity(1);
	 cart.setId(1);  //  id should keep session and use the same id
	 cart.setStatus("AVAILABLE");
	 cart.setTotal(product.getPrice());// 
		cartDAO.saveOrUpdate(cart);
//		//return "redirect:/views/home.jsp";
		return "/home";
		
	}

	@RequestMapping(value = "product/get/addc/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
	
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.listCart());
		model.addAttribute("totalAmount", cartDAO.getTotal("user")); // Just to test, password user
		model.addAttribute("displayCart", "true");
		return "/home";
	}
	

	@RequestMapping(value = "product/get/addc/pay/{id}")
	public String mypayment(Model model) {
		
		return "payment";
	}

	
	
	

}
