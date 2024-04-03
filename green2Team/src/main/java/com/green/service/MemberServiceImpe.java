package com.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.MemberDao;
import com.green.exception.AlreadyExisitonMemberException;
import com.green.exception.IdPasswordNotMatchingException;
import com.green.vo.LoginCommand;
import com.green.vo.MemberVo;
import com.green.vo.RegisterCommand;

@Service
public class MemberServiceImpe implements MemberService {
	
	@Autowired
	private MemberDao dao;


	@Override
	public int register(RegisterCommand registerCommand) {
		// 아이디 중복 체크
		MemberVo m = dao.selectById(registerCommand.getId());
		
		if(m != null) {
			// 아이디 중복 -> 예외 발생
			System.out.println("아이디 중복 : "+registerCommand.getId());
			throw new AlreadyExisitonMemberException("아이디 중복 : "+registerCommand.getId());
			
		}
		
		MemberVo newMember = MemberVo.builder()
											.firstName(registerCommand.getFirstName())
											.lastName(registerCommand.getLastName())
											.id(registerCommand.getId())
											.pw(registerCommand.getPw())
											.build();
		
		int result = dao.insertMember(newMember);
		
		return result;
	}


	@Override
	public LoginCommand login(String id, String pw) {
		
		MemberVo member = dao.selectById(id);
		
		if(!member.getPw().equals(pw)) {
			throw new IdPasswordNotMatchingException("아이디 비밀번호가 맞질않습니다");
	}
		
		LoginCommand logincom = LoginCommand.builder()
									.id(member.getId())
									.pw(member.getPw())
									.build();
							
		return logincom;
	}

	
	


		

}


