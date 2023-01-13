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

/*********************************
 * @function : MemberController
 * @author : Sujin Shin
 * @Date : Dec 26. 2022.
 * 회원 가입, 이메일 인증, ID/PW 찾기, 수정, 탈퇴 요청 처리를 위한 컨트롤러
*********************************/
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
	
	/*
	 * 기능 : 회원가입 페이지 이동
	 * 입력 : x
	 * 출력 : member>join.jsp
	 * */
	@GetMapping("/join")
	public void joinForm() {}
	
	/*
	 * 기능 : 회원가입 Action
	 * 입력 : MemberDTO(ID/PWD, 이름, 전화번호, 이메일, 생년월일) 정보를 받아, MemberService > join 메서드 호출
	 * 출력 : member>joinResult.jsp로 Redirect, MemberDTO 정보와 함께 전달 
	 * */
	@PostMapping("/join")
	public String joinAction(MemberDTO member, RedirectAttributes rttr){
		
		log.info("join...." + member);
		
		service.join(member);
		
		rttr.addFlashAttribute("member", member);
				
		return "redirect:/member/joinResult";
	}
	
	/*
	 * 기능 : 회원가입 완료 페이지 이동
	 * 입력 : x
	 * 출력 : member>joinResult.jsp
	 * 기타 : 회원가입을 통해 받아온 MemberDTO의 정보를 담은 객체를 받아옴
	 */
	@GetMapping("/joinResult")
	public void joinResult() {}
	
	/*
	 * 기능 : 아이디 중복 확인 Action
	 * 입력 : 회원가입 폼에 입력한 ID
	 * 출력 : MemberService > checkId 메서드 호출
	 * 기타 : Ajax
	 * */ 
	@PostMapping("/checkId")
	@ResponseBody
	public String checkId(String mem_id) {
		
		log.info("check id..... " + mem_id);
		
		String result = service.checkId(mem_id);
		
		log.info("check id result : " + result);
		
		return result;
	}
	
	/*
	 * 기능 : 이메일 인증 Action
	 * 입력 : 회원가입 폼에 입력한 email
	 * 출력 : MailSendService > joinEmail 메서드 호출
	 * 기타 : Ajax 
	 * */ 
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		log.info("이메일 인증 요청이 들어옴!");
		log.info("이메일 인증 이메일 : " + email);
		
		return mailService.joinEmail(email);
	}
	
	/*
	 * 기능 : 로그인 페이지로 이동
	 * 입력 : x
	 * 출력 : member>login.jsp, error 또는 logout 시 메세지 출력
	 * */ 
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
	
	/*
	 * 기능 : 아이디 찾기 페이지 이동
	 * 입력 : x 
	 * 출력 : member > findId.jsp
	 * */ 
	@GetMapping("/findId")
	public void findId() {}
	
	/*
	 * 기능 : 아이디 찾기 Action
	 * 입력 : 회원의 이름과 이메일
	 * 출력 : MemberSerivce > findId 메서드 호출, MemberDTO 객체의 정보를 member에 담아 member > findIdResult로 redirect
	 * 기타 : Ajax
	 * */
	@PostMapping("/findId")
	public String findIdAction(MemberDTO member, Model model) {
		
		log.info("find id action.... " + member);
		
		MemberDTO result = service.findId(member);
		
		log.info("find id action result... " + result);
		
		model.addAttribute("member", result);
		
		return "member/findIdResult";
	}
	
	/*
	 * 기능 : 아이디 찾기 결과 페이지 이동
	 * 입력 : x
	 * 출력 : member>findIdResult.jsp, 아이디 찾기 폼에서 입력한 정보를 담은 MemberDTO의 객체를 받아옴
	 * */
	@GetMapping("/findIdResult")
	public void findIdResult() {}
	
	
	/*
	 * 기능 : 비밀번호 찾기 페이지로 이동
	 * 입력 : x
	 * 출력 : member>findPwd.jsp
	 * */
	@GetMapping("/findPwd")
	public void findPwd() {}
	
	/*
	 * 기능 : 비밀번호 찾기 Action
	 * 입력 : 회원의 아이디, 이름, 이메일 정보를 담은 MemberDTO
	 * 출력 : MemberService의 findPwd 메서드 호출
	 * */
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
	
	/*
	 * 기능 : 비밀번호 변경 페이지로 이동
	 * 입력 : 비밀번호 찾기 폼에 입력한 회원 아이디(mem_id)
	 * 출력 : member>pwdModify
	 * */ 
	@GetMapping("/findPwd/{mem_id}")
	public String pwdModify(@PathVariable("mem_id") String mem_id, Model model) {
		
		model.addAttribute("mem_id", mem_id);
		
		return "/member/pwdModify";
	}
	
	/*
	 * 기능 : 비밀번호 변경 Action
	 * 입력 : 회원의 아이디를 담은 MemberDTO
	 * 출력 : MemberService의 modifyPwd 메서드 호출
	 * */ 
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
	
	/*
	 * 기능 : 비밀번호 확인 Action
	 * 입력 : 회원이 입력한 비밀번호(input_pwd), 로그인 세션에 저장된 회원 아이디
	 * 	 	  회원 아이디를 통해 MemberService의 selectMember 메서드 호출해 return된 MemeberDTO의 비밀번호(mem_pwd)
	 * 출력 : input_pwd와 mem_pwd가 일치하는 경우, 1 리턴
	 * 		  input_pwd와 mem_pwd가 다른 경우, 0 리턴
	 * 기타 : Ajax
	 * */ 
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
	
	/*
	 * 기능 : 회원 정보 수정 Action
	 * 입력 : 회원 수정 폼에서 입력된 정보를 담은 MemberDTO
	 * 출력 : MemberService에서 updateMember 메서드 호출
	 * */ 
	@PostMapping("/modify")
	public String memberModifyAction(MemberDTO member, Principal prin){
		
		log.info("member info modify.... " + member);
		
		String mem_id = prin.getName();
		
		member.setMem_id(mem_id);
		
		service.updateMemeber(member);
		
		return "redirect:/mypage/modify";
	}
	
	/*
	 * 기능 : 회원 탈퇴 Action
	 * 입력 : 로그인된 회원의 정보가 담긴 세션 객체
	 * 출력 : MemberService의 delCookie, delMember 메서드 호출
	 * */ 
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
