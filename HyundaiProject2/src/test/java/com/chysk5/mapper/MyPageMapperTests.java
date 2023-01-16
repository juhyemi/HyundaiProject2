package com.chysk5.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.AllBuyProductDTO;
import com.chysk5.domain.BuyProductDTO;
import com.chysk5.domain.CancelProductDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.ReplyDTO;
import com.chysk5.domain.SoldOutProductDTO;
import com.chysk5.domain.TalksDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : MyPageMapperTests
 * @author : Sujin Shin, Kibeom Chung
 * @Date : Jan 08. 2023.
 * 마이페이지 매퍼 테스트
*********************************/
@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MyPageMapperTests {


	@Setter(onMethod_ = @Autowired)
	private MyPageMapper mapper;
	
	/*
	 * 정기범
	 * 내가 등록한 리셀 상품 목록 조회
	 */
	@Test
	public void testGetMyResellList() {
		
		List<MyResellProductDTO> getList = mapper.getMyResellList("kb", null, null);
		List<MyResellProductDTO> getList2 = mapper.getMyResellList("kb", "2023-01-05", "2023-01-07");
		
		for(MyResellProductDTO a : getList) {
			log.info("등록한 리셀 상품: " + a);
		}
		
		for(MyResellProductDTO a : getList2) {
			log.info("등록한 리셀 상품(날짜 검색): " + a);
		}
	}
	
	/*
	 * 정기범
	 * 내가 등록한 상품 중 판매 완료된 상품
	 */
	public void testGetSoldOutList() {
		
		List<SoldOutProductDTO> list = mapper.getMySoldOutList("kb", null, null);
		List<SoldOutProductDTO> list2 = mapper.getMySoldOutList("kb", "2023-01-05", "2023-01-07");
		
		for(SoldOutProductDTO a : list) {
			log.info("판매된 리셀 상품: " + a);
		}

		for(SoldOutProductDTO a : list2) {
			log.info("판매된 리셀 상품(날짜 검색): " + a);
		}
	}
	
	/*
	 * 정기범 작성
	 * 모든 구매 내역 조회
	 */
	@Test
	public void testAllList() {
		log.info("모든 구매내역 확인 test");
		List<AllBuyProductDTO> list = mapper.getAllList("wenger", null, null);
		
		for(AllBuyProductDTO a : list) {
			log.info(a);
		}
		
	}
	
	/*
	 * 정기범 작성
	 * 가격 수정 기능 확인
	 */
	@Test
	public void testModifyPrice() {
		log.info("가격 수정 test");
		mapper.modifyPrice("76", 100000);
	}
	
	/*
	 * 정기범 작성
	 * 회원별 구매목록 조회
	 */
	@Test
	public void testGetBuyProduct() {
		List<BuyProductDTO> list = mapper.getBuyProduct("wenger");
		
		for(BuyProductDTO a : list) {
			assertThat(a).isInstanceOf(BuyProductDTO.class);
			log.info(a);
		}
	}

//	@Test
//	public void testAllList() {
//		List<AllBuyProductDTO> list = mapper.getAllList("kb");
//		
//		for(AllBuyProductDTO a : list) {
//			log.info(a);
//		}
//	}
	
	/*
	 * 정기범 작성
	 * 주문 취소
	 */
	@Test
	public void cancelOrder() {
		
		int result = mapper.cancelOrder("1301", "20");
		
		if (result == 1)	log.info("삭제 정상 완료");
		else log.info("error"); 
	}
	
	/*
	 * 정기범 작성
	 * 리셀 등록한 상품, 등록 취소
	 */
	@Test
	public void cacelResellProduct() {
		log.info("등록 상품 삭제 test");
		int result = mapper.removeMyResellProduct("147", "user2");
		
		if(result == 1)	log.info("등록 취소 정상 완료");
		else log.info("error");
	}
	
	// 신수진
	// 총 구매 금액
	@Test
	public void testTotalOrderPrice() {
		log.info("test total order price....");
		
		int result = mapper.totalOrderPrice("aaaa1");
		
		log.info("result : " + result);
	}
	
	// 신수진
	// 총 구매 횟수
	@Test
	public void testTotalOrderCount() {
		log.info("test total order count.....");
		
		int result = mapper.totalOrderCount("jinjin");
		
		log.info("result : " + result);
	}
	
	// 신수진
	// 내가 쓴 글
	@Test
	public void testSelectMyTalks() {
		log.info("test select my talks.....");
		
		List<TalksDTO> list = mapper.selectMyTalks("jinjin");
		
		for(TalksDTO a : list) {
			log.info(a);
		}
	}	
	
	// 신수진
	// 내가 쓴 댓글
	@Test
	public void testSelectMyReply() {
		log.info("test select my reply.....");
		
		List<ReplyDTO> list = mapper.selectMyReply("jinjin");
		
		for(ReplyDTO a : list) {
			log.info(a);
		}
	}
	
	
	
	/*
	 * 정기범 작성
	 * 취소 상품 목록 조회
	 */
	@Test
	public void testCancelList() {
		
		List<CancelProductDTO> list = mapper.getCancelList("kb", null, null);
		for(CancelProductDTO a : list) {
			assertThat(a).isInstanceOf(CancelProductDTO.class);
			log.info(a);
		}
	}
}
