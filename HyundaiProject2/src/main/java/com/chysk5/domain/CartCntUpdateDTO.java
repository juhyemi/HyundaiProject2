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
public class CartCntUpdateDTO {
	private String cart_no;
	private String cart_amount; // 물품 선택여부
		
	
}