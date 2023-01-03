package com.chysk5.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.MyResellProductDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MyPageMapperTests {


	@Setter(onMethod_ = @Autowired)
	private MyPageMapper mapper;
	
	@Test
	public void testGetMyResellList() {
		
		List<MyResellProductDTO> getList = new ArrayList<>();
		
		mapper.getMyResellList("arsenal");
		
		for(MyResellProductDTO a : getList) {
			log.info("등록한 리셀 상품: " + a.getPro_name());
		}
	}
}
