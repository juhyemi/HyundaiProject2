package com.chysk5.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class TalksServiceTests {
	
	 @Setter(onMethod_= {@Autowired})
	    private TalksService service;
	 
	 
	 // talks 목록
	 @Test
	 public void tlist() {

		 List<TalksDTO> list = service.getTalksList();
		 log.info(list);
	 }
	 
	// talks 글내용 가져오기
	 @Test
	 public void tcontent() {
		 String talks_id = "65";
		 TalksDTO dto = service.getTalksContent(talks_id);
		 log.info(dto);
	 }
	 
	// 글 삭제
	 @Test
	 public void tdelete() {
		 String talks_id = "65";
		 String mem_id = "jinjin";
		 int i = service.delete(talks_id, mem_id);
		 log.info(i);
	 }
	 
	// 글 등록
	 @Test
	 public void tregister() {
		 TalksDTO talks = new TalksDTO();
		 talks.setMember_mem_id("baby");
		 talks.setTalks_content("ddd");
		 talks.setTalks_title("Ddd");
		 int i = service.register(talks);
		 log.info(i);
	 }
	// talks_id 찾기
	 @Test
	 public void talks_idfind() {
		 TalksDTO talks = new TalksDTO();
		 talks.setMember_mem_id("baby");
		 talks.setTalks_content("ddd");
		 talks.setTalks_title("Ddd");
		 int i = service.findTalksId(talks);
		 log.info(i);
	 }
	// 첨부파일 삽입
	 @Test
	 public void insertimg() {
		 TalksDTO talks = new TalksDTO();
		 talks.setMember_mem_id("baby");
		 talks.setTalks_content("ddd");
		 talks.setTalks_title("Ddd");
		 service.registerImage(talks);
	 }
	// 첨부파일 가져오기
	@Test
	public void getImg() {
		String talks_id = "74";
		List<TalksImageDTO> list = service.getImg(talks_id);
		log.info(list);
	}
	 
	 

}
