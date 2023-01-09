package com.chysk5.controller;

import java.nio.charset.Charset;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chysk5.domain.MemberDTO;
import com.chysk5.service.MailSendService;
import com.chysk5.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import okhttp3.Headers;

/*
 * 신수진 작성 
 * */
@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {	
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	@Setter(onMethod_ = @Autowired)
	@Qualifier("BCryptPasswordEncoder")
    private PasswordEncoder encoder;
	
	@Autowired
	private MailSendService mailService;
	
	// 회원가입 페이지로 이동
	@GetMapping("/join")
	public void joinForm() {}
	
	// 회원가입
	@PostMapping("/join")
	public String joinAction(MemberDTO member, RedirectAttributes rttr){
		
		log.info("join...." + member);
		
		service.join(member);
		
		rttr.addFlashAttribute("member", member);
				
		return "redirect:/member/joinResult";
	}
	
	// 회원가입 완료
	@GetMapping("/joinResult")
	public void joinResult() {}
	
	// 아이디 중복 확인
	@PostMapping("/checkId")
	@ResponseBody
	public String checkId(String mem_id) {
		
		log.info("check id..... " + mem_id);
		
		String result = service.checkId(mem_id);
		
		log.info("check id result : " + result);
		
		return result;
	}
	
	// 이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		log.info("이메일 인증 요청이 들어옴!");
		log.info("이메일 인증 이메일 : " + email);
		
		return mailService.joinEmail(email);
	}
	
	// 로그인 페이지로 이동
	@GetMapping("/login")
	public void loginForm(String error, String logout, Model model) {
		
		log.info("error: " + error);
		log.info("logout: " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}
	
	// 아이디 찾기 페이지
	@GetMapping("/findId")
	public void findId() {}
	
	// 아이디 찾기 Action
	@PostMapping("/findId")
	public String findIdAction(MemberDTO member, Model model) {
		
		log.info("find id action.... " + member);
		
		MemberDTO result = service.findId(member);
		
		log.info("find id action result... " + result);
		
		model.addAttribute("member", result);
		
		return "member/findIdResult";
	}
	
	// 아이디 찾기 결과 페이지
	@GetMapping("/findIdResult")
	public void findIdResult() {}
	
	
	// 비밀번호 찾기 페이지
	@GetMapping("/findPwd")
	public void find_pwd() {}
	
	// 비밀번호 찾기 Action
	@PostMapping("/findPwd")
	public ResponseEntity<String> findPwdAction(MemberDTO member, Model model) {
		
		log.info("find password controller....");
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		
		MemberDTO dto = service.findPwd(member);
		
		
		try{
			if(dto != null) {
				String msg = "<script>alert('회원정보 확인이 완료되었습니다.'); location.href='/member/findPwd/" + dto.getMem_id() + "';</script>";
				entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
				
			}else {
				throw new Exception();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
			String msg = "<script>alert('일치하는 회원정보가 없습니다.'); location.href='/member/findPwd';</script>";
			
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	// 비밀번호 변경 페이지로 이동
	@GetMapping("/findPwd/{mem_id}")
	public String pwdModify(@PathVariable("mem_id") String mem_id, Model model) {
		
		model.addAttribute("mem_id", mem_id);
		
		return "/member/pwdModify";
	}
	
	// 비밀번호 변경
	@PostMapping("/pwdModify")
	public ResponseEntity<String> pwdModifyAction(MemberDTO member) {
		
		log.info("modify password .... " + member);
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		
		service.modifyPwd(member);
		
		try {
			String msg = "<script>alert('비밀번호가 변경되었습니다. \\n로그인 페이지로 이동합니다.'); location.href='/member/login';</script>";
			
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return entity;
	}
	
	// 비밀번호 확인
	@PostMapping("/pwCheck")
	@ResponseBody
	public String postPrevModify(String input_pwd, Principal prin) {
		
        log.info("input password check.... " + input_pwd);
       
        String mem_id = prin.getName();
        String mem_pwd = service.selectMember(mem_id).getMem_pwd();
           
        log.info("user : " + mem_id + " mem_pwd : " + mem_pwd + " input_pwd :" + input_pwd);
        
        boolean result = encoder.matches(input_pwd, mem_pwd);
        
        log.info(result);
        
        if(result) {
        	return "1";
        }else {
        	return "0";
        }
        
    }
	
	// 회원 정보 수정
	@PostMapping("/modify")
	public String memberModifyAction(MemberDTO member, Principal prin){
		
		log.info("member info modify.... " + member);
		
		String mem_id = prin.getName();
		
		member.setMem_id(mem_id);
		
		service.updateMemeber(member);
		
		return "redirect:/mypage/modify";
	}
	
	// 회원 탈퇴
	@PostMapping("del")
	public ResponseEntity<String> memDel(Principal prin) throws Exception{
		
		log.info("member delete ....");
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text", "html", Charset.forName("UTF-8")));
		
		String mem_id = prin.getName();
		
		int cookieResult = service.delCookie(mem_id);
		int result = service.delMember(mem_id);
		
		log.info("member delete result : " + result);
		log.info("cookie delete result : " + cookieResult);
		
		try {
			if(result > 0) {
				SecurityContextHolder.clearContext();
				
				String msg = "<script>alert('회원 탈퇴되었습니다.'); location.href='/main'; </script>";
				
				entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
				
			}else {
				throw new Exception();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return entity;
	} 
	
	
}
