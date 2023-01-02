package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ResellProductDTO {
	
	private String pro_name;
	private String pro_price;
	private String pro_opt_size;
	private String pro_opt_id;
}
