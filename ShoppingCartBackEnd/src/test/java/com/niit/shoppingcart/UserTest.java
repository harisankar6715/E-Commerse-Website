package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.dao.UserDAO;

public class UserTest {

	public static void main(String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		User user = (User) context.getBean("user");
		
		// Create Operation
		user.setId("US4");
		user.setName("HARI");
		user.setPassword("king fisher");
		user.setMailid("hari@gmail.com");
		user.setAddress("THRISSUR");
		user.setMobile("8593896782");
		user.setAdmin(true);
	  
		
	    userDAO.saveOrUpdate(user);
		
	    // categoryDAO.delete("CG01"); --> Delete Operation
		
	    //Retrieve Operation
	    if(userDAO.get("US4")== null)
		{
			System.out.println("User does not exist");
		}
		else
		{
			System.out.println("User exists..");
			System.out.println();
		} 

	}

}