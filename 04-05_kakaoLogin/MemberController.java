package com.green.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.exception.AlreadyExisitonMemberException;
import com.green.exception.IdPasswordNotMatchingException;
import com.green.service.KakaoService;
import com.green.service.MemberService;
import com.green.service.MemberServiceImpe;
import com.green.vo.LoginCommand;
import com.green.vo.RegisterCommand;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@Controller
@RequestMapping("/home")
public class MemberController {

	private final KakaoService kakaoService;
	private MemberServiceImpe memberServiceImpe = new MemberServiceImpe();
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/main")
	public String main() {
		return "/home/main";
	}
	
	@GetMapping("/test")
	public String test() {
		return "/home/test";
	}
	
	@GetMapping("/newMember")
	public String newMember() {
		return "/home/newMember";
	}
	
	@PostMapping("/newMember")
	public String newMember(RegisterCommand registerCommand) {
	    try {
	        int result = service.register(registerCommand);
	        return "redirect:/home/main";
	    } catch (AlreadyExisitonMemberException e) {
	        System.out.println("중복발생함");
	    	return "/home/newMember";
		}
	}
	
	
	@GetMapping("/login")
	public String login(Model model, 
			@CookieValue(value="rememberId",required = false) Cookie c) {
			System.out.println("쿠키값 : "+c);
		LoginCommand lc = new LoginCommand();
		if(c != null) {
			System.out.println("쿠키값 : "+c.getValue());
			lc.setId(c.getValue());
			lc.setRememberId(true);
		}
		model.addAttribute("loginCommand",lc);
		model.addAttribute("kakaoUrl", kakaoService.getKakaoLogin());
        System.out.println(kakaoService.getKakaoLogin());
		
		return "/home/login";
	}
	
	
	@PostMapping("/login")
	public String login(LoginCommand loginCommand,HttpSession session, HttpServletResponse response) {
		try {
			LoginCommand info = 
					service.login(loginCommand.getId(), loginCommand.getPw());
			session.setAttribute("login", info);
			
			
			Cookie rememberCookie = new Cookie("rememberId",loginCommand.getId());
			// 아이디를 저장할 지 말지
			if(loginCommand.isRememberId()) { // 불리언 타입은 is -> get 이 아님!
				rememberCookie.setMaxAge(60*60*24*30);
			}else {
				rememberCookie.setMaxAge(0);
			}
			
			// 쿠키 저장하기
			response.addCookie(rememberCookie);
			
			return "redirect:/home/main";
	    } catch (IdPasswordNotMatchingException e) {
	        System.out.println("아이디 혹은 비밀번호 불일치");
	        return "redirect:/home/login";
	    }
	}
	
	@GetMapping("/loginkakao")
	public String login() {
		return "/home/loginkakao";
	}
	
	
}
