package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.CodeDetailVO;

public interface CodeDetailDAO {
	public void add(CodeDetailVO vo) throws Exception; // 추가	
	public List<CodeDetailVO> readList() throws Exception;
	public CodeDetailVO read(int id) throws Exception; //id로 검색해서 가져오기
	public void update(CodeDetailVO vo) throws Exception; // 수정하기

}
