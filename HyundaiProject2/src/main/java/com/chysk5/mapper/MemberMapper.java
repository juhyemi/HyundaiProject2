package com.chysk5.mapper;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.MemberDTO;

/*
 * 신수진 작성
 * */
public interface MemberMapper {

	// 회원가입
	public int insertMember(MemberDTO member);
	
	// 로그인
	public MemberDTO read(String mem_id);
}
