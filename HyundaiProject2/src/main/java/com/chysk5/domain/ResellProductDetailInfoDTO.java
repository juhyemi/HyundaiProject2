package com.chysk5.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class ResellProductDetailInfoDTO {
	private String pro_name;
	private String pro_id;
	private String pro_category;
	private String pro_price;
	
	private List<ResellProductSizeDTO> listSize; 
	private List<ResellProductImgDTO> listImg;
	
}
