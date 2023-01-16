package com.chysk5.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.ReplyDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : ReplyServiceTests
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * 댓글 조회, 등록, 삭제 서비스 테스트
*********************************/
@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ReplyServiceTests {

	@Setter(onMethod_ = @Autowired)
	private ReplyService service;
	
	// 댓글 목록 
	@Test
	public void testSelectReply() {
		
		log.info("test select reply service....");

		String talks_id = "74";
		
		service.selectReply(talks_id).forEach( reply ->log.info("댓글 목록 : " + reply));

	}
	
	// 댓글 등록 
	@Test
	public void testInsertReply() {
		
		log.info("test insert reply service....");
		
		ReplyDTO reply = new ReplyDTO();
		
		reply.setCom_content("test reply content");
		reply.setMember_mem_id("jinjin");
		reply.setTalks_talks_id("74");

		int result = service.insertReply(reply);
		
		log.info("result : " + result);
	}
	
	// 댓글 삭제
	@Test
	public void testDeleteReply() {
		
		log.info("test delete reply service....");
		
		String com_id = "50";
		
		String mem_id = "jinjin";
		
		int result = service.deleteReply(com_id, mem_id);
		
		log.info("result : " + result);
		
	}
	
}
