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
public class CartDTO {
/*	
	CART_NO                   NOT NULL VARCHAR2(50) 
	CART_REGDATE              NOT NULL DATE         
	CART_SELECT               NOT NULL VARCHAR2(10) 
	MEMBER_MEM_ID             NOT NULL VARCHAR2(50) 
	PRODUCT_OPTION_PRO_OPT_ID NOT NULL VARCHAR2(50) 
	CART_AMOUNT                        NUMBER(10) 
*/
	//cart table
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
	
	
	
	  public CartDTO(String member_mem_id, String product_option_pro_opt_id) {
	  
	  this.member_mem_id=member_mem_id;
	  this.product_option_pro_opt_id=product_option_pro_opt_id; }
	 
	
	
}