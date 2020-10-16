package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.RiskStorageVO;
import com.sw.web.domain.UserVO;


@Repository
public class RiskStorageDAOImpl implements RiskStorageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.riskStorageMapper";

	
	@Override
	public void add(RiskStorageVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	public List<RiskStorageVO> readList() throws Exception {
		List<RiskStorageVO> list = new ArrayList<RiskStorageVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}
	
	@Override
	public List<RiskStorageVO> readById(int id) throws Exception {
		List<RiskStorageVO> list = new ArrayList<RiskStorageVO>();
		list = sqlSession.selectList(namespace + ".selectById",id);
		return list;   
	}
	
	@Override
	public RiskStorageVO readByItemNum(RiskStorageVO vo) throws Exception {
		return sqlSession.selectOne(namespace+".selectByItemNum",vo);
	}


	@Override
	public void update(RiskStorageVO vo) throws Exception {
	    sqlSession.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(int id) throws Exception {
		sqlSession.delete(namespace + ".delete", id);
	}



}