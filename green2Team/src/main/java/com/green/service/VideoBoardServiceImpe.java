package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.VideoBoardDao;
import com.green.vo.VideoBoardVo;

@Service
public class VideoBoardServiceImpe implements VideoBoardService {
	@Autowired
	private VideoBoardDao dao;

	@Override
	public List<VideoBoardVo> getVideoList() {
		return dao.recentThreeVideoSelect();
	}
}