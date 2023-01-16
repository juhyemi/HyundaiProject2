package com.chysk5.mapper;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderListDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.productImageDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* 
OrderMapperTest
@author 윤태영
@since 2023.01.04
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.04   윤태영              최초 생성
2023.01.09   윤태영              mapperTest 
 </pre>
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderMapperTests {

	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;

	// 장바구니 주문 양식 주문 물품 조회
	@Test
	public void orderFormList() {

		String mem_id = "brsss";
		mapper.orderFormList(mem_id).forEach(orderlist -> log.info("주문 목록:" + orderlist));

	}

	// order_total 데이터 삽입 + select key (order_total_no)
	@Test
	public void insertSelectKey() {

		String mem_id = "brsss";
		int order_resell_check=0;
		OrderDTO order=new OrderDTO();
        order.setOrder_addr("경기도 용인시");
        order.setOrder_post("21050");
        mapper.insertSelectKey(order, mem_id, order_resell_check);

	}

	// order_detail 데이터 삽입
	@Test
	public void insertOrderDetail() {
		String order_no="194";
		OrderListDTO dto=new OrderListDTO(); 
        dto.setCart_amount(2);
        dto.setProduct_option_pro_opt_id("1297");
	    mapper.insertOrderDetail(order_no, dto);
	}

	// 주문 품목 장바구니 삭제
	@Test
	public void cartOrderDelete() {

		String mem_id = "brsss";
		OrderListDTO dto=new OrderListDTO();
	    dto.setProduct_option_pro_opt_id("1297");
		mapper.cartOrderDelete(mem_id, dto);

	}
	
	// 리셀 상품 주문시 판매시간과 판매 가능 여부 업데이트
	@Test
	public void updateResell() {

		String mem_id = "brsss";
		mapper.orderFormList(mem_id).forEach(orderlist -> log.info("주문 목록:" + orderlist));

	}

	// resell 상품 주문서 조회
	@Test
	public void resellOrderFormList() {

		
	}

	// 리셀 상품 이미지 얻기
	@Test
	public void getProductImage() {

		ResellPriceSearchDTO dto=new ResellPriceSearchDTO();
		dto.setProName("MATIN SYMBOL HALF SWEATPANTS IN BLACK");
		dto.setSizeVal("S");
	    productImageDTO img=mapper.getProductImage(dto);	
	    log.info(img);
	}

	/// 물품 옵션 id 얻기(order_detail 데이터 삽입 목적)
	@Test
	public void getReproductOptId() {

		String re_id="28";
		String id=mapper.getReproductOptId(re_id);
        log.info("리셀 물품 id 조회:"+id);        
	} 

	//리셀 상품 order_detail 데이터 삽입
	@Test
	public void insertresellOrderDetail() {

      String order_no="195";
      String pro_opt_no="338";
      mapper.insertresellOrderDetail(order_no, pro_opt_no);

	}
}
