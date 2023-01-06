package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;


@Mapper
public interface CartMapper {
	
	// 카트 목록 조회
	public List<CartDTO>cartList(String mem_id);
	//product 옵션 id 조회
	public String searchOptid(ProductOptionDTO product);
	
	// 카트 담기
	public void addCart(CartDTO cart);
	// 카트 물품 존재 체크- 장바구니 담기시
	public int checkCart(CartDTO Cart);
	

	
    // 카트에 물품 존재 할 시 장바구니 수량 증가
	public void increaseCount(CartDTO Cart);
	
	// 장바구니 물품 삭제
	public void delete(@Param("mem_id")String mem_id,@Param("pro_opt_Id")String pro_optId);
	
	//장바구니 체크박스
	public void Cartcheck(@Param("cart_no")String cart_no,@Param("cart_select")String cart_select);
	
	// 장바구니 선택 삭제
	public void deleteCheck(@Param("mem_id")String mem_id);
	
	//장바구니 수량 update
	public int updateCnt(@Param("cart_no") String cart_no,@Param("cart_amount") int cart_amount);
	
	
}

