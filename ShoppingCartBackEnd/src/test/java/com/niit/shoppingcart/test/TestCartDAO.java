package com.niit.shoppingcart.test;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;

public class TestCartDAO {
	
	@Autowired
	CartDAO cartDAO;

	

	AnnotationConfigApplicationContext context;

	@Before
	public void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		cartDAO = (CartDAO) context.getBean("cartDAO");
	}

	@Test

	public void UserTestCase() {
		int size = cartDAO.listCart().size();
		assertEquals("cart list test case ", 1, size);

	}


}
