package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;

public interface CartSerivce {
	
	public List<CartDTO>cartList(String mem_id);
	// 장바구니 추가
	public void addCart(CartDTO cart);
	// 상품 옵션 id 가져오기
	public String searchOptid(ProductOptionDTO product);
	// 장바구니 상품 존재 여부
	public int checkCart(CartDTO cart);
	
    //장바구니 수량 증가
	public void increaseCount(CartDTO cart);
	
	//장바구니 물품 삭제
     public void delete(String mem_id, String pro_optId);
}
