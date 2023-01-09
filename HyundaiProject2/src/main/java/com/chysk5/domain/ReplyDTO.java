package com.chysk5.domain;

import java.util.Date;

import lombok.Data;

/*
 * 신수진 작성
 * */
@Data
public class ReplyDTO {
	
	private String com_id;
	private String com_content;
	private Date com_regdate;
	private String talks_talks_id;
	private String member_mem_id;
	private String talks_title;
	
}
