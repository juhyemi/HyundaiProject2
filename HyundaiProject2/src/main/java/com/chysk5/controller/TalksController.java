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
	public String talksContent(@PathVariable("talks_id") String talks_id, Principal prc, Model model) {
		log.info("call talksContent..........");
		String loginUser = prc.getName();
		TalksDTO talksContent = service.getTalksContent(talks_id);
		
		log.info(talksContent);
		log.info(loginUser);
		model.addAttribute("talksContent", talksContent);
		model.addAttribute("loginUser", loginUser);
		return "talks/tcontent";
	}
	
	// 조회수 증가
	@PostMapping("/updateView")
	@ResponseBody
	public String updateViewAction(String talks_id) {
		
		log.info("update view action.... " + talks_id);
		
		service.updateViews(talks_id);
		
		return "success";
	}
	
	//talks 입력폼
	@GetMapping("tform")
	public void talksForm() {
		log.info("call talksForm controller.........");
		
	}
	
	//talks 글 삭제
	@PostMapping("delete")
	public ResponseEntity<String> delete(@RequestParam() String talks_id, Principal prc) throws Exception {
		log.info("call talksFrom controller.........");
		
		ResponseEntity<String> entity = null;
		String mem_id= prc.getName();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		
		int result = service.delete(talks_id, mem_id);
		
		
		log.info("result : " + result );
		log.info("mem_id : " + mem_id );
		
		try {
			if(result > 0) {
				String msg = "<script>alert('삭제를 성공했습니다'); location.href='/talks/tlist';</script>";
				
				entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
			}else {
				throw new Exception();
			}
		}catch(Exception e) {
			e.printStackTrace();
			
			String msg = "<script>alert('삭제를 실패했습니다. (권한이 없습니다)'); location.href='/talks/tlist';</script>";
			
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
	}
	
	// 글 작성
	@PostMapping("register")
	public ResponseEntity<String> register(TalksDTO talks, Principal prc) throws Exception{
		log.info("register controller...........");
		
		String mem_id= prc.getName();
		talks.setMember_mem_id(mem_id);
		
		log.info(talks);
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		
		
		//log.info(mem_id + " " + talks_title + " " + talks_content);
	//	log.info("#########################################################################################");
	//	log.info(talks);
		
		//int result = service.register(mem_id, talks_title, talks_content);
	
		/*
		 * try { if(result > 0) { // if(talks.getAttachList() != null) { //
		 * talks.getAttachList().forEach(attach -> log.info(attach)); //return
		 * service.imageRegister(talks); // String msg =
		 * "<script>alert('작성이 완료되었습니다.'); location.href='/talks/tlist';</script>"; //
		 * entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK); // }else {
		 * String msg =
		 * "<script>alert('작성이 완료되었습니다.'); location.href='/talks/tlist';</script>";
		 * entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK); // }
		 * 
		 * }else { throw new Exception(); } }catch(Exception e) { e.printStackTrace();
		 * 
		 * String msg =
		 * "<script>alert('작성이 실패되었습니다.'); location.href='/talks/tlist';</script>";
		 * 
		 * entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST); }
		 */
		
		return entity;
	}

/*
	//첨부파일 업로드
	@PostMapping("/imageRegister")
	public String imageRegister(TalksDTO talks, RedirectAttributes rttr) {
		log.info("imageRegister: " + talks);
		
		if(talks.getAttachList() != null) {
			talks.getAttachList().forEach(attach -> log.info(attach));
		}
		
		log.info("==================");
		
		service.imageRegister(talks);
		rttr.addFlashAttribute("result", talks.getTalks_id());
		return "redirect:/talks/list";
	}
	
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<TalksImageDTO>> getAttachList(String talks_talks_id) {
		
		log.info("getAttachList" + talks_talks_id);
		return new ResponseEntity<>(service.getAttachList(talks_talks_id), HttpStatus.OK);
	}
	*/
	
}
