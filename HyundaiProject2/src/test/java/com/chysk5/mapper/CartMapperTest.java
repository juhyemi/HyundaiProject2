package com.chysk5.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.CartDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/*
 * 윤태영 작성 22/12/31
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTest {

	
	@Setter(onMethod_ =@Autowired)
    private CartMapper mapper;
	
	//cartlist 작성
	@Test
	public void cartListTest() {
		String mem_id="yoon";
		List<CartDTO>cartlist=mapper.cartList(mem_id);
          	log.info("cart list:"+cartlist);
	}
//	@Test
//	public void addCart(){
//		
//		CartDTO cart=new CartDTO();
//		cart.setMember_mem_id("yoon");
//		cart.setProduct_option_pro_opt_id("3");	
//		mapper.addCart(cart);		
//	}
}
