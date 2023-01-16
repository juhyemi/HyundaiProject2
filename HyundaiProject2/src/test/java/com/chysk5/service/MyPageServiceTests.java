package com.chysk5.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : MyPageServiceTests
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * 마이페이지 서비스 테스트
*********************************/
@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MyPageServiceTests {

	@Setter(onMethod_ = @Autowired)
	private MyPageService service;
	
	// 총 구매 금액
	@Test
	public void testTotalOrderPrice() {
		
		log.info("test total order price service.....");
		
		String mem_id = "jinjin";
		
		log.info("result : " + service.totalOrderPrice(mem_id));
		
	}
	
	// 총 구매 횟수
	@Test
	public void testTotalOrderCount() {
		
		log.info("test total order count service.....");
		
		String mem_id = "jinjin";
		
		log.info("result : " + service.totalOrderCount(mem_id));
		
	}
	
	// 내가 쓴 글
	@Test
	public void testGetMyTalks() {
		
		log.info("test get my talks service......");
		
		String mem_id = "jinjin";
		
		service.getMyTalks(mem_id).forEach( myTalks ->log.info("내글 목록 : " + myTalks));
		
	}
	
	// 내가 쓴 댓글
	@Test
	public void testGetMyReply() {
		
		log.info("test get my reply service......");
		
		String mem_id = "baby";
		
		service.getMyReply(mem_id).forEach( myReply ->log.info("내 댓글 목록 : " + myReply));
		
	}
	
}
