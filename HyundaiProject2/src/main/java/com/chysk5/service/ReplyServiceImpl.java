package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.ReplyDTO;
import com.chysk5.mapper.ReplyMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : ReplyServiceImpl
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * ReplyService 기능 구현 ReplyMapper 호출
*********************************/
@Service
@Log4j
@RequiredArgsConstructor
public class ReplyServiceImpl implements ReplyService {

	private final ReplyMapper mapper;

	// 댓글 리스트
	@Override
	public List<ReplyDTO> selectReply(String talks_id) {
		
		log.info("select reply service..... " + talks_id);
		
		return mapper.selectReply(talks_id);
	}

	// 댓글 등록
	@Override
	public int insertReply(ReplyDTO reply) {
		
		log.info("insert reply service ....." + reply);
		
		return mapper.insertReply(reply);
	}

	// 댓글 삭제
	@Override
	public int deleteReply(String com_id, String mem_id) {
		
		log.info("delete reply service..... " + com_id + " " + mem_id);
		
		return mapper.deleteReply(com_id, mem_id);
	}

}
