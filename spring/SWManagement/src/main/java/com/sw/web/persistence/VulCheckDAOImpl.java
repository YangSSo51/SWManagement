package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.IntegKeepVO;
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
	public VulCheckVO readById(int id) throws Exception {
		VulCheckVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;  
	}

	@Override
	public List<VulCheckVO> readList() throws Exception {
		List<VulCheckVO> list = new ArrayList<VulCheckVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}

	@Override
	public VulCheckVO readByItemNum(String id) throws Exception {
		System.out.println("DAO "+id);
		VulCheckVO vo = sqlSession.selectOne(namespace+".selectByItemNum", id);
		System.out.println(vo.getId());
		return vo;  
	}

}
