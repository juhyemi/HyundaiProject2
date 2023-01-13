package com.chysk5.domain;
import java.util.Date;
import java.util.List;

import lombok.Data;

/*********************************
 * @function : MemberDTO
 * @author : Sujin Shin
 * @Date : Dec 30. 2022.
 * 회원의 정보를 담는 DTO
*********************************/
@Data
public class MemberDTO {

	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private boolean enabled;
	
	private String mem_phone;
	private String mobile1;
	private String mobile2;
	private String mobile3;
	
	private String mem_email;
	
	private String mem_birth;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
	private String mem_address;
	private String mem_postno;
	
	private Date mem_joindate;
	private Date updateDate;
	private List<AuthDTO> authList;
	
}
