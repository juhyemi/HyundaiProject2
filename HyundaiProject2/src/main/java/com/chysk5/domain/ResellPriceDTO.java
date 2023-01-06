package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ResellPriceDTO {
	
	private String pro_opt_size;
	private int re_price;
	
	@Override
	public boolean equals(Object obj) {
		int myPrice = (int)obj;
		return this.re_price == myPrice;
	}

}
