package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartDTO;



public interface OrderService {
	
	 public List<CartDTO> orderList(String mem_id,String cart_select);
}
