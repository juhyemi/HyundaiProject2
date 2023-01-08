package com.chysk5.domain;

import lombok.Data;

@Data
public class AllBuyProductDTO {

	private String order_date;
	private int pro_price;
	private String pro_name;
	private String pro_opt_size;
	private String order_detail_amount;
	private String order_no;
	private String re_price;
	private String pro_loc;
	private String pro_opt_id;
	private String order_reg_resell_check;
}
