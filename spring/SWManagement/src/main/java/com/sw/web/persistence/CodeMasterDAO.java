package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.CodeMasterVO;

public interface CodeMasterDAO {
	public void add(CodeMasterVO codeMaster) throws Exception;
	public List<CodeMasterVO> readList() throws Exception;
	public CodeMasterVO read(int id) throws Exception;
	public void update(CodeMasterVO codeMaster) throws Exception;
}
