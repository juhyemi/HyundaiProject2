package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.ReplyDTO;

public interface ReplyMapper {

	// 댓글 목록
	public List<ReplyDTO> selectReply(String talks_id);

	// 댓글 등록
	public int insertReply(ReplyDTO reply);
	
	// 댓글 삭제
	public int deleteReply(@Param("com_id") String com_id, @Param("mem_id") String mem_id);
}
