package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.sw.web.domain.VulCheckVO;;

public interface VulCheckService {
	public List<VulCheckVO> readList() throws Exception;
	public void add(VulCheckVO vo) throws Exception;

}
