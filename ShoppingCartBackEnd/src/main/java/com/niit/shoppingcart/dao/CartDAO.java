package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Cart;

public interface CartDAO {
	
	public List<Cart> listCart();
	
	public Cart get(int id);
	
	public void saveOrUpdate(Cart cart);
	
	public String delete(String id);
	
	public int getTotal(String id);

}
