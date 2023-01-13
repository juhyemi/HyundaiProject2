package com.chysk5.mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.MemberDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * 신수진 작성
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
					"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@WebAppConfiguration
public class MemberMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder encoder;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	// 회원가입
	@Test
	public void testInsertMember() {
		MemberDTO member = new MemberDTO();
				
		member.setMem_id("nanunkongee2");
		member.setMem_pwd("a1234");
		member.setMem_name("콩이");
		member.setMem_email("kong2@naver.com");
		member.setMem_phone("01012345678");
		member.setMem_birth("2020/09/09");
		
		log.info("insert test.... " + member);

		int result = mapper.insertMember(member);
		
		log.info("insert result : " + result);
	}
	
	// 로그인
	@Test
	public void testRead() {
		
		MemberDTO dto = mapper.read("admin90");
		
		log.info(dto);
		
		dto.getAuthList().forEach(authDTO -> log.info(authDTO));
	}
	
	// 아이디 중복 확인
	@Test
	public void testCheckId() {
		
		String mem_id = "user2";
		
		log.info("test check id : " + mem_id);
		
		String result = mapper.checkId(mem_id);
		
		log.info(result);
	}
	
	// 아이디 찾기
	@Test
	public void testFindId() {
		
		log.info("test find id.....");
		
		MemberDTO member = new MemberDTO();
		
	
	
		
	}
	
	// 비밀번호 찾기
	@Test
	public void testFindPwd() {
		
		log.info("test find password.....");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_name("신수진");
		member.setMem_email("jinjin@naver.com");
		member.setMem_id("jinjin");
		
		MemberDTO result = mapper.findPwd(member);
		
		log.info("test find password result : " + result);
	}
	
	// 비밀번호 변경
	@Test
	public void testModifyPwd() {
		
		log.info("test modify password.....");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_id("kkk");
		member.setMem_pwd("a1234");
		
		int result = mapper.modifyPwd(member);
		
		log.info("result : " + result);
	}
}
