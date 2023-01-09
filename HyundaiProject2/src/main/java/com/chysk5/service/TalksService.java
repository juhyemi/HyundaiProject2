package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.TalksDTO;

public interface TalksService {
	
	public List<TalksDTO> getTalksList();
	
	public TalksDTO getTalksContent(String talks_id);
	
	public int delete(String talks_id, String mem_id);
	
	public int register(String mem_id, String talks_title, String talks_content);
	
	// 조회수 증가
	public int updateViews(String talks_id);
}
