package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.RiskManageVO;

@Repository
public class RiskManageDAOImpl implements RiskManageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.riskManageMapper";

	
	@Override
	public void add(RiskManageVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	public List<RiskManageVO> readList() throws Exception {
		List<RiskManageVO> list = new ArrayList<RiskManageVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}
	
	@Override
	public RiskManageVO readById(int id) throws Exception {
		RiskManageVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}
	
	@Override
	public List<RiskManageVO> readByAssetId(int id) throws Exception {
		List<RiskManageVO> list = new ArrayList<RiskManageVO>();
		list = sqlSession.selectList(namespace + ".selectByAssetId",id);
		return list;
	}

	@Override
	public List<RiskManageVO> readBySearch(int id) throws Exception {
		List<RiskManageVO> list = new ArrayList<RiskManageVO>();
		list = sqlSession.selectList(namespace + ".selectBySerch",id);
		return list;
	}


	@Override
	public void update(RiskManageVO vo) throws Exception {
	    sqlSession.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(int id) throws Exception {
		sqlSession.delete(namespace + ".delete", id);
	}


}