package com.chysk5.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
/*
 * 상품 정보에 사용되는 DTO
 * 김주혜 작성
 */
@Getter
@Setter
@ToString
public class ProductDTO {
	
	private String pro_id;
	private String pro_name;
	private String pro_category;
	private Date pro_ragdate;
	private Long pro_price;
	private String loc1;
	private String loc2;
	private String pro_loc;

}
