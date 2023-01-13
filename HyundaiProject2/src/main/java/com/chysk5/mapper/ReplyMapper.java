package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.ReplyDTO;

/*********************************
 * @function : ReplyMapper
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * 회원 가입, 권한, ID/PW 찾기, 수정, 탈퇴 SQL을 호출하기 위한 매퍼
*********************************/
public interface ReplyMapper {

	// 댓글 목록
	public List<ReplyDTO> selectReply(String talks_id);

	// 댓글 등록
	public int insertReply(ReplyDTO reply);
	
	// 댓글 삭제
	public int deleteReply(@Param("com_id") String com_id, @Param("mem_id") String mem_id);
}
