package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;

public interface TalksService {
	//talks 목록
	public List<TalksDTO> getTalksList();
	// talks 글 가져오기
	public TalksDTO getTalksContent(String talks_id);
	// 글 삭제
	public int delete(String talks_id, String mem_id);
	// 글 등록
	public int register(TalksDTO talks);
	// talks_id 찾기
	public int findTalksId(TalksDTO talks);
	// 첨부파일 삽입
	public void registerImage(TalksDTO talks);
	// 첨부파일 가져오기
	public List<TalksImageDTO> getImg(String talks_id);

	// 조회수 증가
	public int updateViews(String talks_id);
}
