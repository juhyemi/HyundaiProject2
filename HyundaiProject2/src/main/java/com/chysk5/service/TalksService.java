package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.TalksDTO;

public interface TalksService {
	
	public List<TalksDTO> getTalksList();
	
	public TalksDTO getTalksContent(String talks_id);
	
	public boolean delete(String talks_id);
	

}
