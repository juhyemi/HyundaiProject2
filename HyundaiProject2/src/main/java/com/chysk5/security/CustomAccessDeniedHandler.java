package com.chysk5.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

/*********************************
 * @function : CustomAccessDeinedHandler
 * @author : Sujin Shin
 * @Date : Dec 31. 2022.
 * 권한이 제한된 페이지에 접근할 경우 accessError.jsp로 Redirect 처리해주는 핸들러
*********************************/
@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler{@Override
	public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {

		log.error("Access Denied Handler");
		
		log.error("Redirect....");
		
		response.sendRedirect("/accessError");
	}

}
