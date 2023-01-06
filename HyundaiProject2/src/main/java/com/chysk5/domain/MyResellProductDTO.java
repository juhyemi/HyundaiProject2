package com.chysk5.domain;

import java.util.List;

import lombok.Data;

@Data
public class MyResellProductDTO {

	private String re_regdate;
//	private int re_price;
	private String pro_name;
	private String pro_opt_size;
	private String pro_loc;
	private String re_id;
	private String pro_opt_id;
	private int my_price;
	
	private List<ResellPriceDTO> priceRank;
}
