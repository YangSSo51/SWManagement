package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.VulCheckVO;

@Repository
public class VulCheckDAOImpl implements VulCheckDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.vulCheckMapper";
		
	@Override
	public void add(VulCheckVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	@Override
	public List<VulCheckVO> readList() throws Exception {
		List<VulCheckVO> vulList = new ArrayList<VulCheckVO>();
		vulList = sqlSession.selectList(namespace + ".selectAll");
		return vulList;

	}

}
