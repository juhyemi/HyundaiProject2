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
public class CartTotalPriceDTO {
	private String cart_TotalPrice;
		
}