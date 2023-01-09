package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;
import com.chysk5.mapper.TalksImageMapper;
import com.chysk5.mapper.TalksMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class TalksServiceimpl implements TalksService {
	
	private final TalksMapper mapper; 
	private final TalksImageMapper attachMapper;
	
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
	public int delete(String talks_id, String mem_id) {
		log.info("deletetalks........." + talks_id);
		log.info("deletetalks........." + mem_id);
		
		
		return mapper.delete(talks_id, mem_id);
	}
	
	//talks 게시판 글 등록
	@Override
	public int register(String mem_id, String talks_title, String talks_content) {
		log.info("registerTalks.........." + talks_title);
		log.info("registerTalks.........." + talks_content);
		
		return mapper.register(mem_id, talks_title, talks_content);
	}
	
	//talks 첨부파일 등록
	@Override
	public void imageRegister(TalksDTO talks) {
		
		log.info("imageRegister.........." + talks);
		
		if(talks.getAttachList() == null || talks.getAttachList().size() <= 0) {
			return;
		}
		talks.getAttachList().forEach(attach ->{
			attach.setTalks_talks_id(talks.getTalks_id());
			attachMapper.insert(attach);
		
		});
	}
	@Override
	public List<TalksImageDTO> getAttachList(String talks_talks_id){
		log.info("get Attach list by talks_id" + talks_talks_id);
		
		return attachMapper.findBytalkstalksId(talks_talks_id);
	}

	// 조회수 증가
	@Override
	public int updateViews(String talks_id) {

		log.info("update views service.....");
		
		return mapper.updateViews(talks_id);
	}

}
