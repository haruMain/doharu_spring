package com.haru.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.haru.dao.TestDAO;
import com.haru.domain.BoardVO;
import com.haru.service.TestService;
import com.haru.util.FileUtils;

@Service
public class TestServiceImpl implements TestService {
	
	@Autowired
	private FileUtils fileUtils;
	
	@Autowired
	 private TestDAO dao;

	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public void save(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.insert(boardVO);
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(boardVO, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.insertFile(list.get(i)); 
		}
	}

//	게시글 조회
	@Override
	public BoardVO view(long seq) throws Exception {
		 dao.boardHit(seq);
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
	
//	첨부파일조회
	@Override
	public List<Map<String, Object>> selectFileList(long seq) throws Exception {
		return dao.selectFileList(seq);
	}



}
