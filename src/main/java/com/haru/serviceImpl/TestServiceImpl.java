package com.haru.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haru.dao.TestDAO;
import com.haru.domain.TestVO;
import com.haru.service.TestService;

@Service
public class TestServiceImpl implements TestService {
	
	@Autowired
	 private TestDAO dao;

	@Override
	public List<TestVO> list() throws Exception {
		return dao.list();
	}

}
