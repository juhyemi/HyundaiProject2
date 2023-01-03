package com.chysk5.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.TalksDTO;
import com.chysk5.service.TalksService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/talks/")
@RequiredArgsConstructor
public class TalksController {
	
	private final TalksService service; 
	
	//talks list
	@GetMapping("tlist")
	public void talksList(Model model) {
		log.info("talksList controller........");
		
		List<TalksDTO> talksList = service.getTalksList();
		log.info(talksList);
		model.addAttribute("talksList", talksList);
		
	}
	
	//talks글 내용
	@GetMapping("tcontent/{talks_id}")
	public String talksContent(@PathVariable("talks_id") String talks_id, Model model) {
		log.info("call talksContent..........");
		
		TalksDTO talksContent = service.getTalksContent(talks_id);
		log.info(talksContent);
		model.addAttribute("talksContent", talksContent);
		return "talks/tcontent";
	}
	
	//talks 입력폼
	@GetMapping("tform")
	public void talksForm() {
		log.info("call talksFrom controller.........");
		
	}
	

}
