package com.chysk5.service;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.CustomUser;
import com.chysk5.domain.MemberDTO;
import com.chysk5.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;

	// 회원정보 조회
	@Override
	public MemberDTO selectMember(String mem_id) {
		
		log.info("select member...." + mem_id);
		
		return mapper.read(mem_id);
	}

	// 회원가입
	@Override
	public void join(MemberDTO member) {
		
		String phone = member.getMobile1() + member.getMobile2() + member.getMobile3();
		member.setMem_phone(phone);
		
		String birth = member.getBirth_year() + "/" + member.getBirth_month() + "/" + member.getBirth_day();
		member.setMem_birth(birth);
		
		member.setMem_pwd(pwencoder.encode(member.getMem_pwd()));
		
		log.info("***** join " + member);
		
		AuthDTO auth = new AuthDTO();
		
		auth.setMem_id(member.getMem_id());
		auth.setAuthority("ROLE_MEMBER");
		
		mapper.insertMember(member);
		mapper.insertAuth(auth);
	}
	
	// 회원정보 수정
	@Override
	public void updateMemeber(MemberDTO member) {
		String phone = member.getMobile1() + member.getMobile2() + member.getMobile3();
		member.setMem_phone(phone);
		
		String birth = member.getBirth_year() + "/" + member.getBirth_month() + "/" + member.getBirth_day();
		member.setMem_birth(birth);
		
		log.info("***** update member " + member);
		
		mapper.updateMember(member);
	}


	// 아이디 중복 확인
	@Override
	public String checkId(String mem_id) {

		log.info("***** checkId " + mem_id);
		
		return mapper.checkId(mem_id);
	}

	// 아이디 찾기
	@Override
	public MemberDTO findId(MemberDTO member) {
		
		log.info("***** find id : " + member);
		
		return mapper.findId(member);
	}

	// 비밀번호 찾기
	@Override
	public MemberDTO findPwd(MemberDTO member) {

		log.info("***** find password : " + member);
		
		return mapper.findPwd(member);
	}
	
	// 비밀번호 변경
	@Override
	public int modifyPwd(MemberDTO member) {
		
		log.info("***** modify password : " + member);
		
		member.setMem_pwd(pwencoder.encode(member.getMem_pwd()));
		
		return mapper.modifyPwd(member);
	}

	// 회원 탈퇴
	@Override
	public int delMember(String mem_id) {
		
		log.info("***** delete member : " + mem_id);
		
		return mapper.deleteMember(mem_id);
	}

	// 쿠키 삭제
	@Override
	public int delCookie(String mem_id) {
		
		log.info("***** delete cookie : " + mem_id);
		
		return mapper.deleteCookie(mem_id);
	}

}
