package com.niit.shoppingcart;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		Category category = (Category) context.getBean("category");
		//Create Operation
		category.setId("CG120");
		category.setName("FOR MEN");
		category.setDescription("24H Lasting Smell");
		
		categoryDAO.saveOrUpdate(category);
		
		// categoryDAO.delete("CG120"); --> Delete Operation
		
		//Retrieve Operation
		if( categoryDAO.get("CG120") == null) {
			System.out.println("Category does not exist");
		}
		else
		{
			System.out.println("Category exists.. ");
			System.out.println();
		}
	}

}
