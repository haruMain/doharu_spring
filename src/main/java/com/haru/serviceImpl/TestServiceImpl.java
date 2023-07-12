package com.haru.serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haru.dao.TestDAO;
import com.haru.domain.BoardVO;
import com.haru.service.TestService;

@Service
public class TestServiceImpl implements TestService {
	
	@Autowired
	 private TestDAO dao;

	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public void save(BoardVO boardVO) throws Exception {
		dao.insert(boardVO);
	}

	@Override
	public BoardVO view(int seq) throws Exception {
		 return dao.view(seq);
	}

	@Override
	public void modify(BoardVO boardVO) throws Exception {
		 dao.modify(boardVO);
	}

	@Override
	public void delete(int seq) throws Exception {
		 dao.delete(seq);
	}

	@Override
	public int count() throws Exception {
		 return dao.count();
	}

	@Override
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}



}
