package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class AttachFileDTO {
	
	// 첨부파일 처리를 위한 DTO
	private String fileName;
	private String talks_loc;
	private String uuid;
	private boolean image;

}
