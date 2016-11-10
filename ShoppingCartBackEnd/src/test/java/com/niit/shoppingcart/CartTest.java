
package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.User;

public class CartTest {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.shoppingcart");
		context.refresh();

		Cart cart = (Cart) context.getBean("cart");
		CartDAO cartDAO = (CartDAO) context.getBean("cartDAO");

		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");

		//cart.setId(123);
		cart.setPrice(4000);
		cart.setQuantity(3);
		cart.setTotal(12000);
		cart.setStatus("AVAILABLE");

		cart.setProduct(productDAO.get("PRD120"));
		cart.setUser(userDAO.get("US5"));

		cartDAO.saveOrUpdate(cart);

		System.out.println("updated");
	}
}
