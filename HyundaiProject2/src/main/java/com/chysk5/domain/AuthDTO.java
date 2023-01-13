package com.chysk5.domain;

import lombok.Data;

/*********************************
 * @function : AuthDTO
 * @author : Sujin Shin
 * @Date : Jan 01. 2023.
 * 회원 권한 정보를 담는 DTO
*********************************/
@Data
public class AuthDTO {

	private String mem_id;
	private String authority;
}
