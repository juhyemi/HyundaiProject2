package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.TalksImageDTO;

public interface TalksImageMapper {
	
	public void insert(TalksImageDTO dto);
	
	public void delete(String uuid);
	
	public List<TalksImageDTO> findBytalkstalksId(String talks_talks_id);

}
