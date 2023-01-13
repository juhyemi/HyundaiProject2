package com.chysk5.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chysk5.domain.ReplyDTO;
import com.chysk5.service.ReplyService;
import com.chysk5.service.TalksService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : ReplyController
 * @author : Sujin Shin
 * @Date : Jan 08. 2023.
 * 댓글 목록 조회, 등록, 삭제 요청 처리를 위한 컨트롤러
*********************************/
@Log4j
@Controller
@RequestMapping("/reply/")
@RequiredArgsConstructor
public class ReplyController {

	private final ReplyService service;
	
	// 댓글 리스트
	@PostMapping("/replyList")
	@ResponseBody
	public List<ReplyDTO> replyList(String talks_id){
		
		log.info("reply list controller ..... " + talks_id);
		
		List<ReplyDTO> list = service.selectReply(talks_id);
		
		log.info("reply list result : " + list);
		log.info("reply lsit size : " + list.size());
		
		return list;
	}

	// 댓글 등록
	@PostMapping("/replyAdd")
	@ResponseBody
	public int replyAddAction(ReplyDTO reply, Principal prin) {
		
		log.info("add reply controller....." + reply);
		
		String mem_id = prin.getName();
		
		reply.setMember_mem_id(mem_id);
		
		int result = service.insertReply(reply);
		
		log.info("add reply result : "+ result);
		
		return result;
	}
	
	// 댓글 삭제
	@PostMapping("/replyDel")
	@ResponseBody
	public int replyDelAction(Principal prin, @RequestParam("com_id") String com_id) {
		
		log.info("delete reply controller......" + com_id);
		
		String mem_id = prin.getName();
		
		int result = service.deleteReply(com_id, mem_id);
		
		log.info("delete reply result : " + result);
		
		return result;
	}
}
