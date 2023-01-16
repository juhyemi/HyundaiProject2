package com.chysk5.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import com.chysk5.domain.MyRankDTO;
import com.chysk5.domain.PriceRankDTO;
import com.chysk5.domain.RegResellProductDTO;
import com.google.gson.Gson;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j

public class ResellControllerTests {
	
	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void resellProductListControllerTest() throws Exception{
	      log.info(
	            mockMvc.perform(MockMvcRequestBuilders.get("/resell"))
	            .andReturn()
	            .getModelAndView()
	            .getModelMap()
	            );
	   }

	/*
	 * 정기범 작성
	 * 내가 등록하려는 상품에 대한 정보 출력
	 */
	@Test
	public void getResellProductListTest() throws Exception {
		
		ModelMap resultPage = mockMvc.perform(MockMvcRequestBuilders.get("/resell/register")
				.param("pro_opt_id", "125")
				.param("order_no", "125"))
				.andReturn().getModelAndView()
				.getModelMap();
		
		log.info("Controller 테스트: " + resultPage);				
	}
	
	/*
	 * 정기범 작성
	 * 개인 상품 등록
	 */
	@Test
	public void registerTest() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.post("/resell/register")
				 .param("re_id", "5000")
				 .param("re_price", "100000")
				 .param("re_available", "0")
				 .param("mem_id", "brsss")
				 .param("pro_opt_id", "1345")
				 .param("order_no", "167"))
				 .andReturn().getModelAndView()
				 .getViewName();
	}
	
	/*
	 * 정기범 작성
	 * 내가 등록한 금액이 몇번째 순위인지 조회
	 */
	@Test
	public void getMyRankTest() throws Exception {
		
		MyRankDTO myRankdto = new MyRankDTO();
		
		myRankdto.setPro_opt_id("1345");
		myRankdto.setPInt(100000);
		
		String jsonStr = new Gson().toJson(myRankdto);
		
		log.info(jsonStr);
		
		mockMvc.perform(MockMvcRequestBuilders.get("/resell/register/myRank")
				.contentType(MediaType.APPLICATION_JSON)
				.content(jsonStr)
				).andExpect(status().is(200));				

	}
}
