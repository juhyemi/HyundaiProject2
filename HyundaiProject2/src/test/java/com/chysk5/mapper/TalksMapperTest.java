package com.chysk5.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.chysk5.domain.TalksDTO;
import com.chysk5.service.TalksService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
				"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class TalksMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private TalksMapper mapper;
	
	@Test
	public void selectTalksList() {
		log.info("selectTalksList...............");
		
		List<TalksDTO> tList = mapper.getTalksList();
		
		log.info(tList);
		
	}
	
	@Test
	public void selectTalksContent() {
		log.info("selectTalksContent..............");
		
		String talks_id = "3";
		
		TalksDTO content = mapper.getTalksContent(talks_id);
		
		log.info(content);
		
	}
	
//	@Test
//	public void deleteTest() throws Exception {
//		
//		String resultPage = delete.perform(MockMvcRequestBuilders.post("talks/delete").param("talks_id", "3")
//				).andReturn().getTalksList().getViewName();
//		log.info(resultPage);
//		log.info("DELETE COUNT :" + mapper.delete("3"));
//	}
	
	// 조회수 증가
	@Test
	public void testUpdateViews() {
		log.info("test update views....");
		
		int result = mapper.updateViews("9");
		
		log.info("result : " + result);
	}


}
