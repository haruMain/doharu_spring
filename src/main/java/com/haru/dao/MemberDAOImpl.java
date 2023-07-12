package com.haru.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.haru.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	 private SqlSession sql;
	 
	 private static String namespace = "com.haru.mappers.member"; 

//	회원가입
	@Override
	public void register(MemberVO memberVO) throws Exception {
		 sql.insert(namespace + ".register", memberVO);

	}

//	로그인
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		return sql.selectOne(namespace + ".login", memberVO);
	}

}
