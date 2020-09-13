package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.persistence.CodeDetailDAO;
import com.sw.web.domain.CodeDetailVO;

@Service
public class CodeDetailServiceImpl implements CodeDetailService {
	
	@Autowired
	private CodeDetailDAO codeDetailDAO;

	
	public CodeDetailVO read(int id) throws Exception {
		return codeDetailDAO.read(id);
	}

	
	public void update(CodeDetailVO vo) throws Exception {
		codeDetailDAO.update(vo);

	}

	
	public void add(CodeDetailVO vo) throws Exception {
		codeDetailDAO.add(vo);
	}

	
	public List<CodeDetailVO> readList() throws Exception {
		return codeDetailDAO.readList();
	}

}
