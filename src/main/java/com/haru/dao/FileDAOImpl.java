package com.haru.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.haru.domain.FileVO;

@Repository
public class FileDAOImpl implements FileDAO {
	
	@Autowired
	 private SqlSession sql;
	
	 private static String namespace = "com.haru.mappers.file"; 

//	 파일등록
	@Override
	public void insertFileInf(FileVO fileVO) throws Exception {
		sql.insert(namespace + ".insertFileMaster", fileVO);
		sql.insert(namespace + ".insertFileDetail", fileVO);
	}

}
