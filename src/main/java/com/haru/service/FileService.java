package com.haru.service;

import com.haru.domain.FileVO;

public interface FileService {
//	하나의 파일에 대한 정보(속성 및 상세)를 등록한다.
	public String insertFileInf(FileVO fileVO) throws Exception;
}
