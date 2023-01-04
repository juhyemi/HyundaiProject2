package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.TalksDTO;
import com.chysk5.mapper.TalksMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class TalksServiceimpl implements TalksService {
	
	private final TalksMapper mapper; 
	
	//talks게시판 목록 리스트
	@Override
	public List<TalksDTO> getTalksList() {
		
		log.info("call TalksMapper......");
		
		List<TalksDTO> list = mapper.getTalksList();
		log.info(list);
				
		
		return mapper.getTalksList();	
	}

	//talks게시판 상세정보
	@Override
	public TalksDTO getTalksContent(String talks_id) {
		
		log.info("call TalksContent......");
		
		TalksDTO talksContent = mapper.getTalksContent(talks_id);
		log.info(talksContent);
		
		
		return mapper.getTalksContent(talks_id);	
	}
	
	//talks 게시판 글 삭제
	@Override
	public int delete(String talks_id) {
		log.info("deletetalks........." + talks_id);
		
		return mapper.delete(talks_id);
	}
	

}
