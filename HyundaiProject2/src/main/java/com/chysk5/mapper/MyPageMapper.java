package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.AllBuyProductDTO;
import com.chysk5.domain.BuyProductDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.SoldOutProductDTO;

public interface MyPageMapper {

//	public List<MyResellProductDTO> getMyResellList(String mem_id);
	public List<MyResellProductDTO> getMyResellList(@Param("mem_id") String mem_id, @Param("start_date") String start_date, @Param("end_date") String end_date); // 판매중인 상품 목록
	public List<SoldOutProductDTO> getMySoldOutList(@Param("mem_id") String mem_id, @Param("start_date") String start_date, @Param("end_date") String end_date);
	public List<AllBuyProductDTO> getAllList(@Param("mem_id") String mem_id, @Param("start_date") String start_date, @Param("end_date") String end_date);

//	public int removeMyResellProduct(String pro_opt_id, String mem_id);
	public int removeMyResellProduct(@Param("pro_opt_id") String pro_opt_id, @Param("mem_id") String mem_id);
	public int modifyPrice(@Param("re_id") String re_id, @Param("re_price") int re_price);
	public List<BuyProductDTO> getBuyProduct(String mem_id);
	
	// 총 구매 금액
	public int totalOrderPrice(String mem_id);
}
