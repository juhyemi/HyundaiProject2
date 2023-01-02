package com.chysk5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/resell")
public class ResellProductTestController {

	@GetMapping
	public String resellProList() {
		
		log.info("컨트롤러 호출");
		
		return "resell/resellproductList";
	}
	
}
