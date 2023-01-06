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
public class OrderDTO {
/*	
ORDER_NO           NOT NULL VARCHAR2(50)  
ORDER_ADDR         NOT NULL VARCHAR2(200) 
ORDER_POST         NOT NULL VARCHAR2(20)  
ORDER_DATE         NOT NULL DATE          
ORDER_RESELL_CHECK NOT NULL NUMBER(10)    
MEMBER_MEM_ID      NOT NULL VARCHAR2(50)  
*/
	//cart table
	private String order_no;
	private String order_addr;
	private String order_post;
	private Date order_date;
	private String order_resll_check; // 리셀 상품 여부
	private String member_mem_id;
	

	
	
}