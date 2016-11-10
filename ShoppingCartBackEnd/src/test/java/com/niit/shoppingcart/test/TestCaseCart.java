package com.niit.shoppingcart.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.model.Cart;


public class TestCaseCart {

	@Autowired
	static CartDAO cartDAO;

	@Autowired
	static Cart cart;

	static AnnotationConfigApplicationContext context;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		cartDAO = (CartDAO) context.getBean("cartDAO");
		cart = (Cart) context.getBean("cart");
	}

	@Test

	public void cartNameTest() {
		
		cart = cartDAO.get(1);
		String name = cart.getStatus();
		System.out.println("******************----"+name);
		assertEquals("Product Name Test", "AVAILABLE", name);

	}
}