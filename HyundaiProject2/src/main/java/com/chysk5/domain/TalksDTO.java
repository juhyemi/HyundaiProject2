package com.chysk5.domain;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TalksDTO {
	
	private String talks_id;
	private String talks_title;
	private String talks_content;
	private Date talks_regdate;
	private String member_mem_id;
	private int views;
	
	private List<TalksImageDTO> attachList;
	

		

		

}
