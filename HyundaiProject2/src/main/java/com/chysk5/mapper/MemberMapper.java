package com.chysk5.mapper;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.MemberDTO;

/*********************************
 * @function : MemberMapper
 * @author : Sujin Shin
 * @Date : Dec 26. 2022.
 * 회원 가입, 권한, ID/PW 찾기, 수정, 탈퇴 SQL을 호출하기 위한 매퍼
*********************************/
public interface MemberMapper {

	// 회원가입
	public int insertMember(MemberDTO member);
	
	// 권한 insert
	public int insertAuth(AuthDTO auth);
	
	// 로그인
	public MemberDTO read(String mem_id);
	
	// 아이디 중복 확인
	public String checkId(String mem_id);
	
	// 아이디 찾기
	public MemberDTO findId(MemberDTO member);
	
	// 비밀번호 찾기
	public MemberDTO findPwd(MemberDTO member);
	
	// 비밀번호 변경
	public int modifyPwd(MemberDTO member);
	
	// 회원정보 변경
	public void updateMember(MemberDTO member);
	
	// 회원 탈퇴
	public int deleteMember(String mem_id);
	
	// 쿠키 삭제
	public int deleteCookie(String mem_id);
	
}
