package com.haru.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haru.dao.FileDAO;
import com.haru.domain.FileVO;
import com.haru.service.FileService;

@Service
public class FileServiceImpl implements FileService {
	
	@Autowired
	private FileDAO dao;

	@Override
	public String insertFileInf(FileVO fileVO) throws Exception {
		String atchFileId = fileVO.getAtchFileId();
		
		dao.insertFileInf(fileVO);
		return atchFileId;
	}

}
