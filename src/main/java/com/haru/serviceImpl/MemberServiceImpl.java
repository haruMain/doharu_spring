package com.haru.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haru.dao.MemberDAO;
import com.haru.domain.MemberVO;
import com.haru.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	 private MemberDAO dao;
	
//	회원가입
	@Override
	public void register(MemberVO memberVO) throws Exception {
		dao.register(memberVO);

	}

//	로그인
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		return dao.login(memberVO);
	}

}
