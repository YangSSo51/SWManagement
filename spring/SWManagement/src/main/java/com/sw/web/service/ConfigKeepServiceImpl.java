package com.sw.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.ConfigKeepVO;
import com.sw.web.persistence.ConfigKeepDAO;

@Service
public class ConfigKeepServiceImpl implements ConfigKeepService {
	
	@Autowired
	private ConfigKeepDAO ConfigKeepDAO;

	public ConfigKeepServiceImpl(ConfigKeepDAO ConfigKeepDAO) {
		this.ConfigKeepDAO = ConfigKeepDAO;
	}
	
	public void add(ConfigKeepVO vo) throws Exception {
		ConfigKeepDAO.add(vo);
	}
	
	public List<ConfigKeepVO> readList() throws Exception{
		return ConfigKeepDAO.readList();
	}
	
	public ConfigKeepVO readById(int id) throws Exception {
		return ConfigKeepDAO.readById(id);
	}
	
	public List<ConfigKeepVO> readByAssetId(int id) throws Exception {
		return ConfigKeepDAO.readByAssetId(id);
	}
	
	@Override
	public void updateAdmin(ConfigKeepVO vo) throws Exception {
		ConfigKeepDAO.updateAdmin(vo);
	}

	@Override
	public void update(ConfigKeepVO vo) throws Exception {
		ConfigKeepDAO.update(vo);
	}
	
	public void delete(int id) throws Exception {
		ConfigKeepDAO.delete(id);
	}

	
}