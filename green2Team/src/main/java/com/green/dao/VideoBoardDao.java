package com.green.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.green.vo.VideoBoardVo;

@Mapper
public interface VideoBoardDao {
	public List<VideoBoardVo> recentThreeVideoSelect();
}
