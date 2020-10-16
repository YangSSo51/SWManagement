package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.AssetPurchaseVO;

public interface AssetPurchaseDAO {
	public void add(AssetPurchaseVO vo) throws Exception;
	public List<AssetPurchaseVO> readList() throws Exception;
	public AssetPurchaseVO readById(int id) throws Exception;
}
