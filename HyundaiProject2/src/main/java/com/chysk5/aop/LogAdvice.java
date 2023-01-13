package com.chysk5.aop;

import java.util.Date;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Aspect
@Log4j
@Component
public class LogAdvice {

	@Around("execution(* com.chysk5.service..*Service.*(..))")
	public Object logeDate(ProceedingJoinPoint pjp) {
		
		Date date = new Date();
		
		Object result = null;
		date.getTime();
		
		long startTime = System.currentTimeMillis();
		
		//log.info("aop작동");
		log.info("======== 서비스 시작 ======== "+date.toString());
		try {
			result = pjp.proceed();
		} catch (Throwable e1) {
			e1.printStackTrace();
		}

		date.getTime();
		log.info("======== 서비스 끝 ======== ");
		long endTime = System.currentTimeMillis();
		log.info("서비스 동작 시간 : "+((endTime-startTime)/1000)+"sec");
		
		return result;
	}	
}


