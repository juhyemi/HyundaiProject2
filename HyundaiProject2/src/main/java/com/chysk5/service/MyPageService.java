package com.chysk5.service;

import java.util.List;
import com.chysk5.domain.MyResellProductDTO;


public interface MyPageService {
	
	public List<MyResellProductDTO> getMyResellList(String mem_id);
	
	public int removeMyResellProduct(String pro_opt_id, String mem_id);

	// 총 구매 금액
	public int totalOrderPrice(String mem_id);
}
