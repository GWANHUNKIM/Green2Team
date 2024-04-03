package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.VrBoardDao;
import com.green.vo.VrBoardVo;

@Service
public class VrBoardServiceImpe implements VrBoardService {
	@Autowired
	private VrBoardDao dao;

	@Override
	public List<VrBoardVo> getVrList() {
		return dao.recentThreeVrSelect();
	}
}