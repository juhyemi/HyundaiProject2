package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;

/*
 * 작성자 : 김주혜, 신수진
 */
public interface TalksMapper {
	// 글 목록
	public List<TalksDTO> getTalksList();
	// 글 내용
	public TalksDTO getTalksContent(String talks_id);
	// 글 삭제
	public int delete(@Param("talks_id") String talks_id, @Param("mem_id") String mem_id);
	// 글 등록
	public int register(TalksDTO talks);
	// talks_id 찾기
	public int findTalksId(TalksDTO talks);
	// 첨부파일 등록
	public void registerImage(TalksImageDTO talksImage);
	// 첨부파일 가져오기
	public List<TalksImageDTO> getImg(String talks_id);
	
		
	// 조회수 증가
	public int updateViews(String talks_id);
}
