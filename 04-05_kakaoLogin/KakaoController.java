package com.green.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import com.green.service.KakaoService;
import com.green.vo.KakaoDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("kakao")
public class KakaoController {

    private final KakaoService kakaoService;

//    @GetMapping("/kakaoLogin")
//    public ResponseEntity<MsgEntity> callback(HttpServletRequest request) throws Exception {
//        KakaoDTO kakaoInfo = kakaoService.getKakaoInfo(request.getParameter("code"));
//
//        return ResponseEntity.ok().body(new MsgEntity("Success", kakaoInfo));
//    }
    
    
    @GetMapping("/kakaoLogin")
    public RedirectView  callback(HttpServletRequest request, HttpSession session) throws Exception {
        KakaoDTO kakaoInfo = kakaoService.getKakaoInfo(request.getParameter("code"));
        
        String successPage = "/home/main";
        
        
        
        
        
        
        
        session.setAttribute("login", kakaoInfo);
        
        
        
        
        
        return new RedirectView(successPage);
       
    }
    
  
    
    
}