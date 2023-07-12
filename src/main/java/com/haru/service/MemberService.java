package com.haru.service;


import com.haru.domain.MemberVO;

public interface MemberService {

//	회원가입
	public void register(MemberVO memberVO) throws Exception;
	
//	로그인
	public MemberVO login(MemberVO memberVO) throws Exception;
}
