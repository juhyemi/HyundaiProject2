package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;

public interface TalksService {
	
	public List<TalksDTO> getTalksList();
	
	public TalksDTO getTalksContent(String talks_id);
	
	public int delete(String talks_id, String mem_id);
	
	public int register(String mem_id, String talks_title, String talks_content);
	
	public void imageRegister(TalksDTO talks);
	
	public List<TalksImageDTO> getAttachList(String talks_id);

}
