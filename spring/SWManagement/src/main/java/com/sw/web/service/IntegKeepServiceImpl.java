package com.sw.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.IntegKeepVO;
import com.sw.web.persistence.IntegKeepDAO;

@Service
public class IntegKeepServiceImpl implements IntegKeepService {
	
	@Autowired
	private IntegKeepDAO IntegKeepDAO;

	public IntegKeepServiceImpl(IntegKeepDAO IntegKeepDAO) {
		this.IntegKeepDAO = IntegKeepDAO;
	}
	
	public void add(IntegKeepVO vo) throws Exception {
		IntegKeepDAO.add(vo);
	}
	
	public List<IntegKeepVO> readList() throws Exception{
		return IntegKeepDAO.readList();
	}
	
	public IntegKeepVO readById(int id) throws Exception {
		return IntegKeepDAO.readById(id);
	}
	
	public List<IntegKeepVO> readByAssetId(int id) throws Exception {
		return IntegKeepDAO.readByAssetId(id);
	}
	
	@Override
	public List<IntegKeepVO> readBySerach(int id) throws Exception {
		return IntegKeepDAO.readBySearch(id);
	}

	@Override
	public void update(IntegKeepVO vo) throws Exception {
		// TODO Auto-generated method stub
		IntegKeepDAO.update(vo);
	}
	
	public void delete(int id) throws Exception {
		IntegKeepDAO.delete(id);
	}

	
}