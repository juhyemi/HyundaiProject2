package com.chysk5.domain;
/*12-30 윤태영 작성*/
/*장바구니 dto*/
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Data
public class CartDTO {

	private String cart_no;
	private Date cart_date;
	private String select; // 물품 선택여부
	private String member_id;
	private String pro_opt_id;
	private int cart_amount;
}