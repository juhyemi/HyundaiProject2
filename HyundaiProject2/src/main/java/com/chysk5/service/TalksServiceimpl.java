package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;
import com.chysk5.mapper.TalksMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/*
 * 김주혜, 신수진 작성
 * */
@Log4j
@Service
@RequiredArgsConstructor
public class TalksServiceimpl implements TalksService {
	
	private final TalksMapper mapper; 
	
	// talks게시판 목록 리스트
	@Override
	public List<TalksDTO> getTalksList() {
		
		log.info("call TalksMapper......");
		
		List<TalksDTO> list = mapper.getTalksList();
		log.info(list);
				
		
		return mapper.getTalksList();	
	}

	// talks게시판 상세정보
	@Override
	public TalksDTO getTalksContent(String talks_id) {
		
		log.info("call TalksContent......");
		
		TalksDTO talksContent = mapper.getTalksContent(talks_id);
		log.info(talksContent);
		
		
		return mapper.getTalksContent(talks_id);	
	}
	
	// talks 게시판 글 삭제
	@Override
	public int delete(String talks_id, String mem_id) {
		log.info("deletetalks........." + talks_id);
		log.info("deletetalks........." + mem_id);
		
		
		return mapper.delete(talks_id, mem_id);
	}
	
	// talks 게시판 글 등록
	@Override
	public int register(TalksDTO talks) {
		log.info("registerTalks..........");
		
		return mapper.register(talks);
	}

	// 조회수 증가
	@Override
	public int updateViews(String talks_id) {

		log.info("update views service.....");
		
		return mapper.updateViews(talks_id);
	}
	
	// talks_id 찾기
	@Override
	public int findTalksId(TalksDTO talks) {
		log.info("findTalksId service...............");
		
		return mapper.findTalksId(talks);
	}
	// 첨부파일 가져오기
	@Override
	public List<TalksImageDTO> getImg(String talks_id){
		log.info("get attachImg.........");
		
		return mapper.getImg(talks_id);
	}

	// 첨부파일 삽입
	@Transactional
	@Override
	public void registerImage(TalksDTO talks) {
		log.info("registerImage........");
		
		if(talks.getAttachList() == null || talks.getAttachList().size() <= 0) {
			return; 
		}
		talks.getAttachList().forEach(attach -> {
			log.info("register Image service impl,,,,,,");
			attach.setTalks_talks_id(talks.getTalks_id());
			log.info(attach);
			mapper.registerImage(attach);
			
		});
	}
}
