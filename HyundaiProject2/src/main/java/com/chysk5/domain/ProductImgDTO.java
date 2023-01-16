package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
/*
 * 상품 상세정보 이미지에 사용되는 DTO
 * 김주혜 작성
 */
@Setter
@Getter
@ToString
public class ProductImgDTO {
	private String pro_id;
	private String pro_loc;

}
