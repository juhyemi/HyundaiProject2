package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductCriteria {

	private int pageNum;
	private int amount;
	
	public ProductCriteria() {
		this(1,20);
	}
	
	public ProductCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
