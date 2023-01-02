package com.chysk5.domain;




import java.util.Date;

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
	private Long pro_price;
	private String pro_loc;

}
