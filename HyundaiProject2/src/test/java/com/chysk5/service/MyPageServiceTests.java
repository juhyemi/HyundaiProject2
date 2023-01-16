package com.chysk5.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MyPageServiceTests {

	@Setter(onMethod_ = @Autowired )
	private MyPageService service;
	
	
	/*
	 * 정기범 작성
	 * 내가 등록한 리셀 상품 조회
	 */
	@Test
	public void getMyResellListTest() {
		log.info("리셀 등록 service test");
		
		String mem_id = "kb";
		service.getMyResellList(mem_id, null, null).forEach(product -> log.info(product));
		
		service.getMyResellList(mem_id, "2023-01-03", "2023-01-09").forEach(product -> log.info("날짜 검색 : " + product));
	}
	
	/*
	 * 정기범 작성
	 * 판매 완료된 상품 조회
	 */
	@Test
	public void soldOutListTest() {
		log.info("판매 완료된 상품 조회");
		
		String mem_id = "kb";
		service.getSoldOutList(mem_id, null, null).forEach(product -> log.info(product));
		
		service.getSoldOutList(mem_id, "2023-01-03", "2023-01-09").forEach(product -> log.info("날짜 검색 :" + product));
	}
	
	/*
	 * 정기범 작성
	 * 모든 구매내역 조회
	 */
	@Test
	public void allBuyListTest() {
		log.info("모든 구매 내역 조회");
		
		String mem_id = "kb";
		service.getAllBuyList(mem_id, null, null).forEach(product -> log.info(product));
		
		service.getAllBuyList(mem_id, "2023-01-03", "2023-01-09").forEach(product -> log.info("날짜 검색 :" + product));
	}
	
	/*
	 * 정기범 작성
	 * 주문 취소 내역 조회
	 */
	@Test
	public void cancelListTest() {
		log.info("주문 취소 내역 조회");
		String mem_id = "kb";

		service.getCancelList(mem_id, null, null).forEach(product -> log.info(product));
		service.getCancelList(mem_id,"2023-01-05", "2023-01-09").forEach(product -> log.info("날짜 검색 :" + product));
	}
	
	/*
	 * 정기범 작성
	 * 주문내역 첫 화면에 보여줄, 내가 주문한 물건 내역 조회
	 */
	@Test
	public void getDeafultOrderListTest() {
		log.info("메인 주문 내역 service 테스트");
		
		String mem_id = "kb";
		service.getBuyProduct(mem_id).forEach(product -> log.info(product));
	}
	
	/*
	 * 정기범 작성
	 * 리셀 상품 가격 수정
	 */
	@Test
	public void modifyTest() {
		log.info("가격 수정 service 테스트");
		
		String re_id = "77";
		int re_price = 110000;
		
		int result = service.modifyPrice(re_id, re_price);
		
		if(result == 1)	log.info("가격 수정 완료");
		else log.info("error");
	}
	
	/*
	 * 정기범 작성
	 * 주문 취소
	 */
	@Test
	public void cancelOrderTest() {
		log.info("주문 취소 service 테스트");
		
		String pro_opt_id = "246";
		String order_no = "141";		
		int result = service.cancelOrder(pro_opt_id, order_no);
		
		if(result == 1)	log.info("주문 삭제 완료");
		else log.info("error");
	}
}
