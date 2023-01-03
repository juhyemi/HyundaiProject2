package com.chysk5.mapper;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.chysk5.domain.MemberDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * 신수진 작성
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@WebAppConfiguration
public class MemberMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder encoder;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	
	// 회원가입
	@Test
	public void insertTest() {
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
	
	@Test
	public void testRead() {
		
		MemberDTO dto = mapper.read("admin90");
		
		log.info(dto);
		
		dto.getAuthList().forEach(authDTO -> log.info(authDTO));
	}
	
	@Test
	public void testCheckId() {
		
		String mem_id = "user2";
		
		log.info("test check id : " + mem_id);
		
		int result = mapper.checkId(mem_id);
		
		log.info(result);
	}

}
