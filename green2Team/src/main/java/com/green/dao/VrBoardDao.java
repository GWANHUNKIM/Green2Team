package com.green.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.green.vo.VrBoardVo;

@Mapper
public interface VrBoardDao {
	public List<VrBoardVo> recentThreeVrSelect();
}
