package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.TalksDTO;

public interface TalksMapper {
	
	public List<TalksDTO> getTalksList();
	
	public TalksDTO getTalksContent(String talks_id);

}
