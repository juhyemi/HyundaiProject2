package com.chysk5.controller;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.user;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ReplyControllerTests {
	
	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	// 댓글 목록
	@Test
	public void testReplyList() throws Exception{
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.post("/reply/replyList")
						.param("talks_id", "67"))
					.andReturn()
					.getModelAndView());
	}
	
	// 댓글 등록
	@Test
	@WithMockUser
	public void testReplyAddAction() throws Exception{
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/reply/replyAdd")
				.with(user("jinjin"))
				.param("com_content", "테스트 댓글 내용")
				.param("talks_talks_id", "83")
				).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
	
	// 댓글 삭제
	@Test
	@WithMockUser
	public void testReplyDelAction() throws Exception{
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/reply/replyDel")
				.with("jinjin")
				.param("com_id", "52")
				).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
}
