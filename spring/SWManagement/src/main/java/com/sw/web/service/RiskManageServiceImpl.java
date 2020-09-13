package com.sw.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.RiskManageVO;
import com.sw.web.persistence.RiskManageDAO;

@Service
public class RiskManageServiceImpl implements RiskManageService {
	
	@Autowired
	private RiskManageDAO RiskManageDAO;

	public RiskManageServiceImpl(RiskManageDAO RiskManageDAO) {
		this.RiskManageDAO = RiskManageDAO;
	}
	
	public void add(RiskManageVO vo) throws Exception {
		RiskManageDAO.add(vo);
	}
	
	public List<RiskManageVO> readList() throws Exception{
		return RiskManageDAO.readList();
	}
	
	public RiskManageVO readById(int id) throws Exception {
		return RiskManageDAO.readById(id);
	}
	
	public List<RiskManageVO> readByAssetId(int id) throws Exception {
		return RiskManageDAO.readByAssetId(id);
	}
	
	@Override
	public List<RiskManageVO> readBySerach(int id) throws Exception {
		return RiskManageDAO.readBySearch(id);
	}

	@Override
	public void update(RiskManageVO vo) throws Exception {
		// TODO Auto-generated method stub
		RiskManageDAO.update(vo);
	}
	
	public void delete(int id) throws Exception {
		RiskManageDAO.delete(id);
	}

	
}