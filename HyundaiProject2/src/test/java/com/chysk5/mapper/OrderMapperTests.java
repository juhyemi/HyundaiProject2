package com.chysk5.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * 윤태영 작성 22/12/31
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderMapperTests {

	@Setter(onMethod_ = @Autowired)
	private CartMapper cartmapper;
	private OrderMapper ordermapper;
	
	/* 장바구니 주문 양식 주문 물품 조회 */	
	/*
	 * @Test public void orderFormList(){
	 * 
	 * String mem_id="brsss"; log.info("mem_id:"+mem_id); CartDTO cart=new
	 * CartDTO();
	 * 
	 * List<CartDTO>orderList=ordermapper.orderFormList(mem_id);
	 * log.info("--------------------"); log.info("orderList:"+orderList);
	 * 
	 * }
	 */
    
	/*
	 * @Test public void orderFormList(){
	 * 
	 * String mem_id="brsss"; log.info("mem_id:"+mem_id); CartDTO cart=new
	 * CartDTO();
	 * 
	 * List<CartDTO>orderList=ordermapper.orderFormList(mem_id);
	 * log.info("--------------------"); log.info("orderList:"+orderList);
	 * 
	 * }
	 */
 
}
