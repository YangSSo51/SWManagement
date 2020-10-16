package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.RiskManageVO;

public interface RiskManageDAO {
	public void add(RiskManageVO vo) throws Exception;
	public List<RiskManageVO> readList() throws Exception;
	public RiskManageVO readById(int id) throws Exception;
	public List<RiskManageVO> readByAssetId(int id) throws Exception;
	public List<RiskManageVO> readBySearch(int id) throws Exception;
	public void update(RiskManageVO vo) throws Exception;
	public void delete(int id) throws Exception;
}
