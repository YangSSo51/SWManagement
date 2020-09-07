package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.persistence.AssetManageDAO;

@Service
public class AssetManageServiceImpl implements AssetManageService {
	
	@Autowired
	private AssetManageDAO assetManageDAO;

	public AssetManageServiceImpl(AssetManageDAO assetManageDAO) {
		this.assetManageDAO = assetManageDAO;
	}
	
	public void add(AssetManageVO vo) throws Exception {
		assetManageDAO.add(vo);
	}
	
	public List<AssetManageVO> readList() throws Exception{
		return assetManageDAO.readList();
	}
	
	public AssetManageVO readById(int id) throws Exception {
		return assetManageDAO.readById(id);
	}
	
	public List<AssetManageVO> readByName(String name) throws Exception {
		return assetManageDAO.readByName(name);
	}
	
	public void updateIntegCount(int integ_count) throws Exception{
		assetManageDAO.updateIntegCount(integ_count);
	}
	public void updatePLC(AssetManageVO vo) throws Exception {
		assetManageDAO.updatePLC(vo);
	}
	
	public void updateServer(AssetManageVO vo) throws Exception {
		assetManageDAO.updateServer(vo);
	}
	
	public void delete(int id) throws Exception {
		assetManageDAO.delete(id);
	}
	
}