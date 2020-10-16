package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.UserVO;


@Repository
public class AssetManageDAOImpl implements AssetManageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.assetManageMapper";

	
	@Override
	public void add(AssetManageVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	public List<AssetManageVO> readList() throws Exception {
		List<AssetManageVO> list = new ArrayList<AssetManageVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}
	
	@Override
	public AssetManageVO readById(int id) throws Exception {
		AssetManageVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}

	@Override
	public List<AssetManageVO> readByName(String name) throws Exception {
		List<AssetManageVO> list = new ArrayList<AssetManageVO>();
		list = sqlSession.selectList(namespace + ".selectByName",name);
		return list;
	}

	public void updateIntegCount(AssetManageVO vo) throws Exception{
		sqlSession.update(namespace+".updateIntegCount",vo);
	}
	
	public void updateRiskCount(AssetManageVO vo) throws Exception{
		sqlSession.update(namespace+".updateRiskCount",vo);
	}
	
	@Override
	public void updatePLC(AssetManageVO vo) throws Exception {
	    sqlSession.update(namespace + ".updatePLC", vo);
	}

	@Override
	public void updateServer(AssetManageVO vo) throws Exception {
	    sqlSession.update(namespace + ".updateServer", vo);		
	}
	
	@Override
	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", id);
	}

}