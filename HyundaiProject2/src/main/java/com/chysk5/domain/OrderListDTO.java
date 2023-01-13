package com.chysk5.domain;
/*12-30 윤태영 작성*/
/*장바구니 dto*/
import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Data
@NoArgsConstructor
public class OrderListDTO {
    
	
	// 카트
	private String cart_no;
	private String product_option_pro_opt_id;
	private String member_mem_id;
	private Date cart_regdate;
	private String cart_select; // 물품 선택여부
	private int cart_amount;
	
	//product table
	private String pro_name;
	private String pro_price;
	
	//product option table
	private String pro_opt_size;
	private String pro_opt_stock;
	
	private String pro_loc;
	
	private String re_id;
	

	
	
}