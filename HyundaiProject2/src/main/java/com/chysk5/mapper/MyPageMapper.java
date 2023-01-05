package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.MyResellProductDTO;

public interface MyPageMapper {

	public List<MyResellProductDTO> getMyResellList(String mem_id);
	public int removeMyResellProduct(String re_id);
	
	// 총 구매 금액
	public int totalOrderPrice(String mem_id);
}
