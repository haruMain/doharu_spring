package com.haru.aaa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.haru.domain.MemberVO;
import com.haru.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(MemberController.class);
	 */
	
	 
	
	@Autowired
	MemberService service;
	
//	회원가입
	 @RequestMapping(value = "/register", method = RequestMethod.GET)
	 public void getRegister() throws Exception {
			/* logger.info("get register"); */
	 }
	 @RequestMapping(value = "/register", method = RequestMethod.POST)
	 public String postRegister(MemberVO memberVO) throws Exception {
		 service.register(memberVO);
		 return "redirect:/";
	  
	 }
	 
//	 로그인
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	 public String login(MemberVO memberVO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
			/* logger.info("post login"); */
		 
		 HttpSession session = req.getSession();
		 MemberVO login = service.login(memberVO);
	  
		 if(login == null) {
			 session.setAttribute("member", null);  
			 rttr.addFlashAttribute("msg", false);
		 } else {
			 session.setAttribute("member", login);
		 }
	    
		 return "redirect:/";
	 	}
	 
//	 로그아웃
	 @RequestMapping(value = "/logout", method = RequestMethod.GET)
	 public String logout(HttpSession session) throws Exception {
	  session.invalidate();
	  return "redirect:/";
	 }

}
