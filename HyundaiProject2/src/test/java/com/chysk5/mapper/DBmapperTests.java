package com.chysk5.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DBmapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private TestMapper mapper;
	
	@Test
	public void dbTest() {
		mapper.getList().forEach(aaa->log.info(aaa));
		//안불러와지는 
		//
		
		//assertThat 으로 불러온 값과
		//경우 1. 내가 불러오려는 객체가 맞는 인스턴스인지 확인
		//isinstanceof(testdto.class)  같은 메서드 사용해서
		
		// 경우2. 내가 불러오는 데이터의 갯수가 맞는지 확인   isEqual
		
		// 경우3. 불러온 값의 ID가 맞는지 확인
		
		//테스트 주도개발이란?
		//요구분석을 해서 기능이 쫙나오면
		
		
		
		
	}

}
