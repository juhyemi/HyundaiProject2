package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class AttachFileDTO {
	
	private String fileName;
	private String talks_loc;
	private String uuid;
	private boolean image;

}
