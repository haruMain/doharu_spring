package com.haru.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.haru.domain.BoardVO;

public interface TestService {
	
	public List<BoardVO> list() throws Exception;
	
	public void save(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception;

//	게시글 조회
	public BoardVO view(long seq) throws Exception;
	
	public void modify(BoardVO boardVO) throws Exception;
	
	public void delete(int seq) throws Exception;
	
	public int count() throws Exception;
	
//	페이징 목록
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
	
//	첨부파일조회
	public List<Map<String, Object>> selectFileList(long seq) throws Exception;
	
}
