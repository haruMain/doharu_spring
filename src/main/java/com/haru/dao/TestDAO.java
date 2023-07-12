package com.haru.dao;

import java.util.List;

import com.haru.domain.BoardVO;

public interface TestDAO {
//	게시물 목록
	 public List<BoardVO> list() throws Exception; 
	 
//	 게시물 등록
	 public void insert(BoardVO boardVO) throws Exception;

//	 게시물 조회
	 public BoardVO view(int seq) throws Exception;
	 
// 	 게시물 수정
	 public void modify(BoardVO boardVO) throws Exception;
	 
	// 게시뮬 삭제
	 public void delete(int seq) throws Exception;
	 
	// 게시물 총 갯수
	 public int count() throws Exception;
	 
	// 게시물 목록 + 페이징
	 public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
}
