package com.chysk5.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.chysk5.domain.CustomUser;
import com.chysk5.domain.MemberDTO;
import com.chysk5.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		log.warn("Load User By UserName : " + userName);
		
		MemberDTO dto = mapper.read(userName);
		
		log.warn("queried by member mapper: " + dto);
		
		return dto == null ? null : new CustomUser(dto);
	}
	
	
}
