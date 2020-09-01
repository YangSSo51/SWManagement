package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.sw.web.domain.CodeMasterVO;

public interface CodeMasterService {
	public CodeMasterVO read(int id) throws Exception;
	public List<CodeMasterVO> readList() throws Exception;
	public void add(CodeMasterVO codeMaster) throws Exception;
	public void update(CodeMasterVO codeMaster) throws Exception;
}
