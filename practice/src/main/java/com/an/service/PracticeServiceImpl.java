package com.an.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.dao.PracticeDAO;
import com.an.domain.PracticeVO;

@Service
public class PracticeServiceImpl implements PracticeService {
	
	@Autowired
	private PracticeDAO dao;

	@Override
	public List<PracticeVO> list() {
		
		return dao.list();
	}

}
