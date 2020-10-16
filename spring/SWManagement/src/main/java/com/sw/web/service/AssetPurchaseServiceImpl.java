package com.sw.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.AssetPurchaseVO;
import com.sw.web.persistence.AssetPurchaseDAO;

@Service
public class AssetPurchaseServiceImpl implements AssetPurchaseService {
	
	@Autowired
	private AssetPurchaseDAO AssetPurchaseDAO;

	public AssetPurchaseServiceImpl(AssetPurchaseDAO AssetPurchaseDAO) {
		this.AssetPurchaseDAO = AssetPurchaseDAO;
	}
	
	public void add(AssetPurchaseVO vo) throws Exception {
		AssetPurchaseDAO.add(vo);
	}
	
	public List<AssetPurchaseVO> readList() throws Exception{
		return AssetPurchaseDAO.readList();
	}
	
	public AssetPurchaseVO readById(int id) throws Exception {
		return AssetPurchaseDAO.readById(id);
	}
}