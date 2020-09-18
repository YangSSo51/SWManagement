package com.sw.web.service;

import java.util.List;

import com.sw.web.domain.RiskStorageVO;

public interface RiskStorageService {
	public void add(RiskStorageVO vo) throws Exception;
	public List<RiskStorageVO> readList() throws Exception;
	public List<RiskStorageVO> readById(int id) throws Exception;
	public RiskStorageVO readByItemNum(RiskStorageVO vo) throws Exception;
	public void update(RiskStorageVO vo) throws Exception;
	public void delete(int id) throws Exception; 
}
