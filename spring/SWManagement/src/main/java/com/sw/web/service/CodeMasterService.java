package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.sw.web.domain.CodeMasterVO;

public interface CodeMasterService {
	public CodeMasterVO read(int id) throws Exception;
	public CodeMasterVO read(String reprec) throws Exception;
	public void update(CodeMasterVO vo) throws Exception;
	public void add(CodeMasterVO vo) throws Exception;
	public List<CodeMasterVO> readList() throws Exception;

}
