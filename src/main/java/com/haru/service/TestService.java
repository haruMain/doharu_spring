package com.haru.service;

import java.util.List;

import com.haru.domain.BoardVO;

public interface TestService {
	
	public List<BoardVO> list() throws Exception;
	
	public void save(BoardVO boardVO) throws Exception;

	public BoardVO view(int seq) throws Exception;
	
	public void modify(BoardVO boardVO) throws Exception;
	
	public void delete(int seq) throws Exception;
	
	public int count() throws Exception;
	
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
}
