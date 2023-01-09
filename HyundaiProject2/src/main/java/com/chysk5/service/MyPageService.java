package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.AllBuyProductDTO;
import com.chysk5.domain.BuyProductDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.ReplyDTO;
import com.chysk5.domain.SoldOutProductDTO;
import com.chysk5.domain.TalksDTO;


public interface MyPageService {
	
	public List<MyResellProductDTO> getMyResellList(String mem_id); // 내가 판매중인 상품들 목록 보여주기
	public List<SoldOutProductDTO> getSoldOutList(String mem_id); // 내가 판매 완료한 상품들 목록 보여주기
	
	public List<AllBuyProductDTO> getAllBuyList(String mem_id); // 내가 구매한 모든 상품 목록 보여주기
	
	public int removeMyResellProduct(String pro_opt_id, String mem_id);

	public int modifyPrice(String re_id, int re_price);
	public List<BuyProductDTO> getBuyProduct(String mem_id); // 리셀 상품 목록 보여주기
	
	// 총 구매 금액
	public int totalOrderPrice(String mem_id);
	
	// 총 구매 횟수
	public int totalOrderCount(String mem_id);
	
	// 내가 쓴 글
	public List<TalksDTO> getMyTalks(String mem_id);
	
	// 내가 쓴 댓글
	public List<ReplyDTO> getMyReply(String mem_id);
}
