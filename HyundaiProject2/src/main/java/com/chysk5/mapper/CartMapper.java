package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.CartDTO;

public interface CartMapper {
	
	// 카트 목록 조회
	public List<CartDTO>cartList(String mem_id);
	// 카트 담기
	public void addCart(CartDTO cart);

}

