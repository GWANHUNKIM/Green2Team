package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.service.KakaoService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class HomeController {
	
    private final KakaoService kakaoService;

    @RequestMapping(value="/", method= RequestMethod.GET)
    public String login(Model model) {
        model.addAttribute("kakaoUrl", kakaoService.getKakaoLogin());
        System.out.println(kakaoService.getKakaoLogin());

        return "index";
    }
}