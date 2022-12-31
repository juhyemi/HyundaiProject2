package com.chysk5.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellProductDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ResellMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ResellMapper mapper;
	
	@Test
	public void testGetMyResellProduct() {
		log.info("@@@@@@@ testGetMyResellProduct 호출");
		
		ResellProductDTO resellProductDTO = new ResellProductDTO();
		resellProductDTO = mapper.getMyResellProduct("4");
		
		log.info(resellProductDTO.getPro_name());
		log.info(resellProductDTO.getPro_opt_size());
		log.info(resellProductDTO.getPro_price());
		log.info(resellProductDTO.getPro_opt_color());
	}
	
	@Test
	public void testRegister() {
		log.info("@@@@@@ testRegister 호출");
	
		RegResellProductDTO regSellProductDTO = new RegResellProductDTO();
		
		regSellProductDTO.setRe_id("10");
		regSellProductDTO.setRe_price("19000");
		regSellProductDTO.setRe_available("0");
		regSellProductDTO.setMember_mem_id("chung");
		regSellProductDTO.setProduct_option_pro_opt_id("4");
		
		mapper.register(regSellProductDTO);
	}
	
}
