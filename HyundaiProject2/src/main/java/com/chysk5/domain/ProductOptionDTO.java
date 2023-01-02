package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ProductOptionDTO {
	
	private String pro_id;
	private String pro_name;
	private String pro_category;
	private Long pro_price;
	private String pro_opt_id;
	private String pro_opt_size;
	private String pro_opt_color;
	private Long pro_opt_stock;
	private String product_pro_id;

}
