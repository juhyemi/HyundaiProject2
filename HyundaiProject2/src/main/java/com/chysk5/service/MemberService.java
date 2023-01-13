package com.chysk5.service;

import java.security.Principal;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.MemberDTO;

/*********************************
 * @function : MemberService
 * @author : Sujin Shin
 * @Date : Dec 28. 2022.
 * 
*********************************/
public interface MemberService {
	
	// 회원정보 조회
	public MemberDTO selectMember(String mem_id);
	
	// 회원가입
	public void join(MemberDTO member);
	
	// 아이디 중복 체크
	public String checkId(String mem_id);
	
	// 아이디 찾기
	public MemberDTO findId(MemberDTO member);
	
	// 비밀번호 찾기
	public MemberDTO findPwd(MemberDTO member);
	
	// 비밀번호 변경
	public int modifyPwd(MemberDTO member);
	
	// 회원 탈퇴
	public int delMember(String mem_id);
	
	// 쿠키 삭제
	public int delCookie(String mem_id);

	// 회원정보 변경
	public void updateMemeber(MemberDTO member);
	
}
