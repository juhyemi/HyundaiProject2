package com.chysk5.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.ReplyDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : MemberMapper
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * 댓글 조회, 등록, 삭제 테스트
*********************************/
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class ReplyMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;

	// 댓글 리스트 조회 테스트
	@Test
	public void testSelectReply() {
		
		log.info("test select reply.....");
		
		List<ReplyDTO> list = mapper.selectReply("30");
		
		log.info("test select reply result : " + list);
	}
	
	// 댓글 등록 테스트
	@Test
	public void testInsertReply() {
		
		log.info("test insert reply......");
		
		ReplyDTO reply = new ReplyDTO();
		
		reply.setCom_content("test2");
		reply.setMember_mem_id("baby");
		reply.setTalks_talks_id("9");
		
		log.info(reply);
		
		int result = mapper.insertReply(reply);
		
		log.info("test insert reply result : " + result);
	}
	
	// 댓글 삭제 테스트
	@Test
	public void testDeleteReply() {
		
		log.info("test delete reply.....");
		
		int result = mapper.deleteReply("10", "jinjin");
		
		log.info("test delete reply result : " + result);
	}

	
}
