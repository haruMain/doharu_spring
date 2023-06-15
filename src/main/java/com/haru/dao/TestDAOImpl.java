package com.haru.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.haru.domain.TestVO;

@Repository
public class TestDAOImpl implements TestDAO {
	
	@Autowired
	 private SqlSession sql;
	 
	 private static String namespace = "com.haru.mappers.board";

	@Override
	public List<TestVO> list() throws Exception {
		 return sql.selectList(namespace + ".test");
	}

}
