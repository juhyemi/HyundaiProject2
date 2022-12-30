package com.chysk5.domain;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductDTO {
	
	private String pro_id;
	private String pro_name;
	private String pro_category;
	private Date pro_ragdate;
	private long pro_price;
}
