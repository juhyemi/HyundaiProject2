package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartDTO;



public interface OrderService {
	/* 주문양식 주문 물품 조회 */
	 public List<CartDTO> orderFormList(String mem_id);
}
