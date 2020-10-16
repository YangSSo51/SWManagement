package com.sw.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.RiskStorageVO;
import com.sw.web.persistence.RiskStorageDAO;

@Service
public class RiskStorageServiceImpl implements RiskStorageService {
	
	@Autowired
	private RiskStorageDAO RiskStorageDAO;

	public RiskStorageServiceImpl(RiskStorageDAO RiskStorageDAO) {
		this.RiskStorageDAO = RiskStorageDAO;
	}
	
	public void add(RiskStorageVO vo) throws Exception {
		RiskStorageDAO.add(vo);
	}
	
	public List<RiskStorageVO> readList() throws Exception{
		return RiskStorageDAO.readList();
	}
	
	public List<RiskStorageVO> readById(int id) throws Exception {
		return RiskStorageDAO.readById(id);
	}
	
	@Override
	public RiskStorageVO readByItemNum(RiskStorageVO vo) throws Exception {
		return RiskStorageDAO.readByItemNum(vo);
	}
	
	@Override
	public void update(RiskStorageVO vo) throws Exception {
		// TODO Auto-generated method stub
		RiskStorageDAO.update(vo);
	}
	
	public void delete(int id) throws Exception {
		RiskStorageDAO.delete(id);
	}

	
}