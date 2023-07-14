package com.haru.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.haru.domain.BoardVO;

@Repository
public class TestDAOImpl implements TestDAO {
	
	@Autowired
	 private SqlSession sql;
	 
	 private static String namespace = "com.haru.mappers.board"; 

//	 게시물 목록
	@Override
	public List<BoardVO> list() throws Exception {
		 return sql.selectList(namespace + ".list");
	}
	
//	게시물 등록
	@Override
	public void insert(BoardVO boardVO) throws Exception {
		  sql.insert(namespace + ".write", boardVO);
	}

//	게시물 조회
	@Override
	public BoardVO view(long seq) throws Exception {
		 return sql.selectOne(namespace + ".view", seq);
	}

//	게시물 수정
	@Override
	public void modify(BoardVO boardVO) throws Exception {
		 sql.update(namespace + ".modify", boardVO);
	}

//	게시물 삭제
	@Override
	public void delete(int seq) throws Exception {
		 sql.delete(namespace + ".delete", seq);
		
	}

//	게시물 총 갯수
	@Override
	public int count() throws Exception {
		return sql.selectOne(namespace + ".count"); 
	}

//	게시물 목록 + 페이징
	@Override
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {
		 HashMap<String, Integer> data = new HashMap<String, Integer>();
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 return sql.selectList(namespace + ".listPage", data);
	}
	
// 	첨부파일 업로드
	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
			/* sql.insert("boardMapper.insertFile", map); */
		sql.insert(namespace + ".insertFile", map);
	}
	
// 첨부파일 조회
	@Override
	public List<Map<String, Object>> selectFileList(long seq) throws Exception {
		return sql.selectOne(namespace + ".selectFileList", seq);
	}
	
//	게시판 조회수
	@Override
	public void boardHit(long seq) throws Exception {
		sql.update(namespace + ".boardHit", seq);
	}
	

}
