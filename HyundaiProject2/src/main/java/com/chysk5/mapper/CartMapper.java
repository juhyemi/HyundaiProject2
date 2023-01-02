package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;


public interface CartMapper {
	
	// 카트 목록 조회
	public List<CartDTO>cartList(String mem_id);
	//product 옵션 id 조회
	public String searchOptid(ProductOptionDTO product);
	// 카트 담기
	public void addCart(CartDTO cart);
    
}

