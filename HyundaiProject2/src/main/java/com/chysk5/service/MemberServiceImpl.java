package com.chysk5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	// 회원가입
	@Override
	public int join(MemberDTO member) {
		
		String phone = member.getMobile1() + "-" + member.getMobile2() + "-" + member.getMobile3();
		member.setMem_phone(phone);
		
		String birth = member.getBirth_year() + "/" + member.getBirth_month() + "/" + member.getBirth_day();
		member.setMem_birth(birth);
		
		log.info("***** join " + member);
		
		return mapper.insertMember(member);
	}



}
