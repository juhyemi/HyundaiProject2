package com.chysk5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.chysk5.domain.AuthDTO;
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
	
	// 회원가입
	@Override
	public void join(MemberDTO member) {
		
		String phone = member.getMobile1() + "-" + member.getMobile2() + "-" + member.getMobile3();
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



}
