package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.VulCheckVO;

public interface VulCheckDAO {
	public void add(VulCheckVO vo) throws Exception;
	public List<VulCheckVO> readList() throws Exception;
	

}
