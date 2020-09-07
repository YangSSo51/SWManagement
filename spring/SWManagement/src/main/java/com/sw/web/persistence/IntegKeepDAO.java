package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.IntegKeepVO;

public interface IntegKeepDAO {
	public void add(IntegKeepVO vo) throws Exception;
	public List<IntegKeepVO> readList() throws Exception;
	public IntegKeepVO readById(int id) throws Exception;
	public List<IntegKeepVO> readByAssetId(int id) throws Exception;
	public List<IntegKeepVO> readBySearch(int id) throws Exception;
	public void update(IntegKeepVO vo) throws Exception;
	public void delete(int id) throws Exception;
}
