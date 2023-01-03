package com.chysk5.mapper;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.MemberDTO;

/*
 * 신수진 작성
 * */
public interface MemberMapper {

	// 회원가입
	public int insertMember(MemberDTO member);
	
	// 권한 insert
	public int insertAuth(AuthDTO auth);
	
	// 로그인
	public MemberDTO read(String mem_id);
	
	// 아이디 중복 확인
	public String checkId(String mem_id);
}
