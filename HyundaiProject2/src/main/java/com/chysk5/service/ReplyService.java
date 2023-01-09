package com.chysk5.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.ReplyDTO;

/*
 * 신수진 작성
 * */
public interface ReplyService {
	
	// 댓글 리스트
	public List<ReplyDTO> selectReply(String talks_id);
	
	// 댓글 등록
	public int insertReply(ReplyDTO reply);
	
	// 댓글 삭제
	public int deleteReply(String com_id, String mem_id);
}
