package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;

public interface CartSerivce {
	
	public List<CartDTO>cartList(String mem_id);
	
	public void addCart(CartDTO cart);
	public String seachOptid(ProductOptionDTO product);
}
