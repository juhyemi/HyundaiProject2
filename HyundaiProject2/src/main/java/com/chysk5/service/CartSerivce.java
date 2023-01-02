package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartDTO;

public interface CartSerivce {
	
	public List<CartDTO>cartList(String mem_id);
	
	public void addCart(CartDTO cart);
}
