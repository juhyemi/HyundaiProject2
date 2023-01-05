package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.TalksDTO;

public interface TalksMapper {
	
	public List<TalksDTO> getTalksList();
	
	public TalksDTO getTalksContent(String talks_id);
	
	public int delete(@Param("talks_id") String talks_id, @Param("mem_id") String mem_id);
	
	public int register(@Param("mem_id") String mem_id, @Param("talks_title") String talks_title, @Param("talks_content") String talks_content);
	

}
