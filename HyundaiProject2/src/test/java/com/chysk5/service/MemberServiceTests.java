package com.chysk5.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.MemberDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : MemberServiceTests
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * 회원 서비스 테스트
*********************************/
@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberServiceTests {

	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	// 회원 정보 조회
	@Test
	public void testSelectMember() {
		
		log.info("test select member service....");
		
		String mem_id = "jinjin";
		
		log.info("result : " + service.selectMember(mem_id));
	}
	
	// 회원가입
	@Test
	public void testJoin() {
		
		log.info("test join service.....");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_id("test service");
		member.setMem_pwd("a1234");
		member.setMem_name("서비스 테스트");
		member.setMobile1("010");
		member.setMobile2("1234");
		member.setMobile3("2234");
		member.setMem_email("test@naver.com");
		member.setBirth_year("1999");
		member.setBirth_month("01");
		member.setBirth_day("01");
		
		service.join(member);
		
		log.info("success!");
	}
	
	// 아이디 중복 체크
	@Test
	public void testCheckId() {
		
		log.info("test check id service.....");
		
		String mem_id = "test";
		
		log.info("result : " + service.checkId(mem_id));
		
	}
	
	// 아이디 찾기
	@Test
	public void testFindId() {
		
		log.info("test find id service......");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_name("현대");
		member.setMem_email("wls3147@naver.com");
		
		log.info("result : " + service.findId(member));
		
	}
	
	// 비밀번호 찾기
	@Test
	public void testFindPwd() {
		
		log.info("test find password service.....");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_id("hyundai11");
		member.setMem_name("현대");
		member.setMem_email("wls3147@naver.com");
		
		log.info("result : " + service.findPwd(member));
		
	}
	
	// 비밀번호 변경
	@Test
	public void testModifyPwd() {
		
		log.info("test modify password service.....");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_id("hyundai11");
		member.setMem_pwd("aaaa");
		
		log.info("result : " + service.modifyPwd(member));
		
	}
	
	// 회원 탈퇴
	@Test
	public void testDelMember(){
		
		log.info("test delete member service.....");
		
		String mem_id = "test2";
		
		log.info("result : " + service.delMember(mem_id));
	}
	
	// 쿠키 삭제
	@Test
	public void testDelCookie() {
		
		log.info("test delete cookie service.....");
		
		String mem_id = "hyundai";
		
		log.info("result : " + service.delCookie(mem_id));
		
	}

	// 회원정보 변경
	@Test
	public void testUpdateMember() {
		
		log.info("test update member service.....");
		
		MemberDTO member = new MemberDTO();
		
		member.setMem_id("jinjin");
		member.setMem_name("수정수정222");
		member.setMobile1("010");
		member.setMobile2("1234");
		member.setMobile3("2234");
		member.setMem_email("test@naver.com");
		member.setBirth_year("1999");
		member.setBirth_month("01");
		member.setBirth_day("01");
		
		service.updateMemeber(member);
		
		log.info("success!");
		
	}
}
