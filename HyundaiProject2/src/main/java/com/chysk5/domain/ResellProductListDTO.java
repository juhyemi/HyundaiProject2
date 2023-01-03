package com.chysk5.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ResellProductListDTO {
	
	private String pro_name;
	private String pro_id;
	private List<ResellProductImgDTO> list;
	
}
