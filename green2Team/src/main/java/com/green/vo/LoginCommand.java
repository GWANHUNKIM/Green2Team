package com.green.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LoginCommand { // 로그인 객체
	
	private String id;
	private String pw;
	private boolean rememberId;
	
}
