package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

public class SupplierTest { 
	
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		Supplier supplier = (Supplier) context.getBean("supplier");
		
		// Create Operation
	    supplier.setId("SUP120");
		supplier.setName("SUJITH");
		supplier.setAddress("eKart");
	    supplierDAO.saveOrUpdate(supplier);
		System.out.println("NO of suppliers:"+supplierDAO.list().size());
	   
		// supplierDAO.delete("SP8194"); -->Delete Operation 
		
	    //Retrieve Operation
	    if(supplierDAO.get("SUP120")== null)
		{
			System.out.println("Supplier does not exist");
		}
		else
		{
			System.out.println("Supplier exists..");
			System.out.println();
		} 
	}


}
