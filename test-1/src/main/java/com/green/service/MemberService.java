package com.green.service;



import com.green.vo.RegisterCommand;
import com.green.vo.LoginCommand;

public interface MemberService {
	
	public int register(RegisterCommand registerCommand);
	
	public LoginCommand login(String id, String pw);
}
