package com.chysk5.service;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.MemberDTO;

/*
 * 신수진 작성
 * */
public interface MemberService {
	
	// 회원가입
	public void join(MemberDTO member);
	
	// 아이디 중복 체크
	public String checkId(String mem_id);
	
	// 아이디 찾기
	public MemberDTO findId(MemberDTO member);
	
	// 비밀번호 찾기
	public MemberDTO findPwd(MemberDTO member);
	
	// 회원 탈퇴
	public int delMember(String mem_id);
	
	// 쿠키 삭제
	public int delCookie(String mem_id);
}
