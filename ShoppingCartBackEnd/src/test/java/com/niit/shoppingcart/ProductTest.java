package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Product;

public class ProductTest { 
	
	
	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		Product product = (Product) context.getBean("product");
		
		// Create Operation
	    product.setId("PRD120");
		product.setName("D&G");
		product.setDescription("for summer day");
		product.setPrice(4000);
		product.setCategory_id("CG120");
		product.setSupplier_id("SUP120");
	    productDAO.saveOrUpdate(product);
		
		// productDAO.delete("PRD120"); -->Delete Operation 
		
	    //Retrieve Operation
	    if(productDAO.get("PRD120")== null)
		{
			System.out.println("Product does not exist");
		}
		else
		{
			System.out.println("Product exists..");
			System.out.println();
		} 
	}



}
