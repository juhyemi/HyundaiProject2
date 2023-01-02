package com.chysk5.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.TalksDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
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

}
