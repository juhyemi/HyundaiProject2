package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;

/*
 * 작성자 : 신수진, 김주혜
 */
public interface TalksService {
	// talks 목록
	// 작성자 : 김주혜
	public List<TalksDTO> getTalksList();
	// talks 글 가져오기
	// 작성자 : 김주혜
	public TalksDTO getTalksContent(String talks_id);
	// 글 삭제
	// 작성자 : 김주혜
	public int delete(String talks_id, String mem_id);
	// 글 등록
	// 작성자 : 김주혜
	public int register(TalksDTO talks);
	// talks_id 찾기
	// 작성자 : 김주혜
	public int findTalksId(TalksDTO talks);
	// 첨부파일 삽입
	// 작성자 : 김주혜
	public void registerImage(TalksDTO talks);
	// 첨부파일 가져오기
	// 작성자 : 김주혜
	public List<TalksImageDTO> getImg(String talks_id);
	// 조회수 증가
	// 작성자 : 신수진
	public int updateViews(String talks_id);
}
