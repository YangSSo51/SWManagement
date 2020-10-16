package com.sw.web.service;

import java.util.List;

import com.sw.web.domain.ConfigKeepVO;

public interface ConfigKeepService {
	public void add(ConfigKeepVO vo) throws Exception;
	public List<ConfigKeepVO> readList() throws Exception;
	public ConfigKeepVO readById(int id) throws Exception;
	public List<ConfigKeepVO> readByAssetId(int id) throws Exception;
	public void update(ConfigKeepVO vo) throws Exception;
	public void updateAdmin(ConfigKeepVO vo) throws Exception;
	public void delete(int id) throws Exception; 
}
