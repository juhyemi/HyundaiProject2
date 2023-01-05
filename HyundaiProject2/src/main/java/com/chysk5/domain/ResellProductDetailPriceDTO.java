package com.chysk5.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ResellProductDetailPriceDTO {
	
	private String re_low_price;
	private List<ResellProductDetailPriceDateDTO> datePriceList;
	
}
