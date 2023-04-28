package com.an.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.an.domain.PracticeVO;

@Repository
public class PracticeDAOImpl implements PracticeDAO {
	
	@Autowired
	private SqlSession mybatis;

	@Override
	public List<PracticeVO> list() {
		
		return mybatis.selectList("practice.plist");
		
	}

}
