package com.chysk5.domain;

import lombok.Data;

//내가 판매완료한 상품

@Data
public class SoldOutProductDTO {

	private String product_option_pro_opt_id;
	private int re_price;
	private String re_selldate;
	private String pro_opt_size;
	private String pro_name;
	private String pro_loc;
}
