package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.persistence.VulCheckDAO;
import com.sw.web.domain.VulCheckVO;

@Service
public class VulCheckServiceImpl implements VulCheckService {

	@Autowired
	private VulCheckDAO vulcheckDAO;
	
	public List<VulCheckVO> readList() throws Exception {
		return vulcheckDAO.readList();
	}

	@Override
	public void add(VulCheckVO vo) throws Exception {
		vulcheckDAO.add(vo);

	}

}
