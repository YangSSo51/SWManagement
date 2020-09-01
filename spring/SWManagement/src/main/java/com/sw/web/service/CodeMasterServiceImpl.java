package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.persistence.CodeMasterDAO;

@Service
public class CodeMasterServiceImpl implements CodeMasterService {
	
	@Autowired
	private CodeMasterDAO codeMasterDAO;

	public CodeMasterServiceImpl(CodeMasterDAO codeMasterDAO) {
		this.codeMasterDAO = codeMasterDAO;
	}
	
	public CodeMasterVO read(int id) throws Exception {
		return codeMasterDAO.read(id);
	}
	
	public List<CodeMasterVO> readList() throws Exception{
		return codeMasterDAO.readList();
	}
	
	public void add(CodeMasterVO codeMaster) throws Exception {
		codeMasterDAO.add(codeMaster);
	}

	
	public void update(CodeMasterVO codeMaster) throws Exception {
		codeMasterDAO.update(codeMaster);
	}
	



}