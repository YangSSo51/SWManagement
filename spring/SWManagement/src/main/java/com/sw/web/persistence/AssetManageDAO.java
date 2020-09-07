package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.AssetManageVO;

public interface AssetManageDAO {
	public void add(AssetManageVO vo) throws Exception;
	public List<AssetManageVO> readList() throws Exception;
	public AssetManageVO readById(int id) throws Exception;
	public List<AssetManageVO> readByName(String name) throws Exception;
	public void updateIntegCount(int integ_count) throws Exception;
	public void updatePLC(AssetManageVO vo) throws Exception;
	public void updateServer(AssetManageVO vo) throws Exception;
	public void delete(int id) throws Exception;
}
