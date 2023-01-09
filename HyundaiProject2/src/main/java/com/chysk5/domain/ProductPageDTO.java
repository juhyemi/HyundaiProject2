package com.chysk5.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductPageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private ProductCriteria cri;
	
	public ProductPageDTO(ProductCriteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/5.0))*5;
		
		this.startPage = this.endPage-4;
		
		int realEnd = (int)(Math.ceil(total*1.0)/cri.getAmount());
		
		if(realEnd < this.endPage) {
			this.endPage=realEnd;
		}
		
		this.prev = 1<this.startPage;
		this.next = this.endPage < realEnd;
		
	}

	
	
	
}
