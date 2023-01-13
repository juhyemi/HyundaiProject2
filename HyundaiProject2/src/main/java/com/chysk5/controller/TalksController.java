package com.chysk5.controller;

import java.nio.charset.Charset;
import java.security.Principal;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chysk5.domain.TalksDTO;
import com.chysk5.domain.TalksImageDTO;
import com.chysk5.service.TalksService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
/*
 * 작성자 : 김주혜, 신수진
 */
@Log4j
@Controller
@RequestMapping("/talks/")
@RequiredArgsConstructor
public class TalksController {

	private final TalksService service;

//  talks 목록
//	작성자 : 김주혜
	@GetMapping("tlist")
	public void talksList(Model model) {
		log.info("talksList controller........");
		List<TalksDTO> talksList = service.getTalksList();
		log.info(talksList);
		model.addAttribute("talksList", talksList);
	}

//	talks글 내용
//	작성자 : 김주혜
	@GetMapping("tcontent/{talks_id}")
	public String talksContent(@PathVariable("talks_id") String talks_id, Principal prc, Model model) {
		log.info("call talksContent..........");
		String loginUser = prc.getName(); // 현재 이용 중인 고객의 정보를 가져옴
		TalksDTO talksContent = service.getTalksContent(talks_id); // 글 내용
		List<TalksImageDTO> list = service.getImg(talks_id); // 해당 글 첨부파일
		log.info(talksContent);
		log.info(loginUser);
		log.info(list);
		model.addAttribute("talksContent", talksContent);
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("list", list);
		return "talks/tcontent";
	}

//	조회수 증가
	@PostMapping("/updateView")
	@ResponseBody
	public String updateViewAction(String talks_id) {
		log.info("update view action.... " + talks_id);
		service.updateViews(talks_id);
		return "success";
	}

	
//	talks 입력폼
//	작성자 : 김주혜
	@GetMapping("tform")
	public void talksForm() {
		log.info("call talksForm controller.........");
	}

//	talks 글 삭제
//	작성자 : 김주혜
	@PostMapping("delete")
	public ResponseEntity<String> delete(@RequestParam() String talks_id, Principal prc) throws Exception {
		log.info("call talksFrom controller.........");

		ResponseEntity<String> entity = null;
		String mem_id = prc.getName();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));

		int result = service.delete(talks_id, mem_id);

		log.info("result : " + result);
		log.info("mem_id : " + mem_id);

		try {
			if (result > 0) {
				String msg = "<script>alert('삭제를 성공했습니다'); location.href='/talks/tlist';</script>";
				entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "<script>alert('삭제를 실패했습니다. (권한이 없습니다)'); location.href='/talks/tlist';</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

//	글 등록
//	작성자 : 김주혜
	@PostMapping("register")
	public ResponseEntity<String> register(TalksDTO talks, Principal prc, Model model) throws Exception {
		log.info("register controller...........");

		String mem_id = prc.getName();
		talks.setMember_mem_id(mem_id);

		log.info(talks);

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));

		int result = service.register(talks);
		String talks_id = service.findTalksId(talks) + "";
		talks.setTalks_id(talks_id);
		service.registerImage(talks);
		try {
			if (result > 0) {
				String msg = "<script>alert('작성이 완료되었습니다.'); location.href='/talks/tlist';</script>"; //
				entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "<script>alert('작성이 실패되었습니다.'); location.href='/talks/tlist';</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
