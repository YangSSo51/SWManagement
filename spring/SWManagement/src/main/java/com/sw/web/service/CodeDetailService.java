package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.sw.web.domain.CodeDetailVO;

public interface CodeDetailService {
	public CodeDetailVO read(int id) throws Exception;
	public void update(CodeDetailVO vo) throws Exception;
	public void add(CodeDetailVO vo) throws Exception;
	public List<CodeDetailVO> readList() throws Exception;

	
}
