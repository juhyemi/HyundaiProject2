package com.chysk5.mapper;

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
@Log4j
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
				"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class TalksMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private TalksMapper mapper;
	// 게시글 목록
	@Test
	public void selectTalksList() {
		log.info("selectTalksList...............");
		
		List<TalksDTO> tList = mapper.getTalksList();
		
		log.info(tList);
		
	}
	// 게시글 내용
	@Test
	public void selectTalksContent() {
		log.info("selectTalksContent..............");
		
		String talks_id = "3";
		
		TalksDTO content = mapper.getTalksContent(talks_id);
		
		log.info(content);
		
	}
	// 게시글 삭제
	@Test
	public void deleteTest() throws Exception {
		log.info("delete....");
		
		String talks_id = "85";
		String mem_id = "baby";
		
		int deletetests = mapper.delete(talks_id, mem_id);
		
		log.info(deletetests);
		
		
		
	}
	// 게시글 등록
	@Test
	public void register() {
		log.info("selectTalksList...............");
		
		TalksDTO talks = new TalksDTO();
		talks.setMember_mem_id("baby");
		talks.setTalks_title("jldk");
		talks.setTalks_content("a;skdfj;lk");
		
		int i = mapper.register(talks);
		
		log.info(i);
		
	}
	// 해당 게시글 번호 찾기
	@Test
	public void testFindTalksId() {
		log.info("findTalksId...............");
		
		TalksDTO talks = new TalksDTO();
		talks.setMember_mem_id("baby");
		talks.setTalks_title("첨부파일,,");
		talks.setTalks_content("아니 첨부파일,,");
		
		int i = mapper.findTalksId(talks);
		
		log.info(i);
		
	}
	
	// 첨부파일 사진 가져오기
	@Test
	public void getImg() {
		log.info("getImg...............");
		
		String talks_id = "74";
		
		List<TalksImageDTO> list = mapper.getImg(talks_id);
		log.info(list);

	}
	

	// 조회수 증가
	@Test
	public void testUpdateViews() {
		log.info("test update views....");
		
		int result = mapper.updateViews("9");
		
		log.info("result : " + result);
	}


}
