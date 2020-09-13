package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.sw.web.persistence.CodeMasterDAO;
import com.sw.web.domain.CodeMasterVO;

@Service
public class CodeMasterServiceImpl implements CodeMasterService {
	
	@Autowired
	private CodeMasterDAO codeMasterDAO;
	

	
	public CodeMasterVO read(int id) throws Exception {
		return codeMasterDAO.read(id);
	}
	
	public CodeMasterVO read(String reprec) throws Exception {
		return codeMasterDAO.read(reprec);
	}

	
	public void update(CodeMasterVO vo) throws Exception {
		codeMasterDAO.update(vo);

	}

	
	public void add(CodeMasterVO vo) throws Exception {
		codeMasterDAO.add(vo);

	}

	
	public List<CodeMasterVO> readList() throws Exception {
		return codeMasterDAO.readList();
	}

}
