package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
 * 첨부파일에 사용되는 DTO
 */
@Setter
@Getter
@ToString
public class TalksImageDTO {
	
	private String uuid;
	private String talks_loc;
	private String filename;
	private String talks_talks_id;
	

}
