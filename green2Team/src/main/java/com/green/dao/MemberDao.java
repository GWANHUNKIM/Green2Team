package com.green.dao;


import org.apache.ibatis.annotations.Mapper;

import com.green.vo.MemberVo;



@Mapper
public interface MemberDao {
	
	// 등록
	public int insertMember(MemberVo memberVo);
	
	public MemberVo selectById(String id);

}
