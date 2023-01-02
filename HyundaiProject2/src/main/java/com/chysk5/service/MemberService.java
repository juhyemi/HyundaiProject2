package com.chysk5.service;

import com.chysk5.domain.AuthDTO;
import com.chysk5.domain.MemberDTO;

/*
 * 신수진 작성
 * */
public interface MemberService {
	
	// 회원가입
	public void join(MemberDTO member);
	
}
