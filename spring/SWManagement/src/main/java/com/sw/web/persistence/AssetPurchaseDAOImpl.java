package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.AssetPurchaseVO;
import com.sw.web.domain.UserVO;


@Repository
public class AssetPurchaseDAOImpl implements AssetPurchaseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.assetPurchaseMapper";

	
	@Override
	public void add(AssetPurchaseVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	public List<AssetPurchaseVO> readList() throws Exception {
		List<AssetPurchaseVO> list = new ArrayList<AssetPurchaseVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}
	
	@Override
	public AssetPurchaseVO readById(int id) throws Exception {
		AssetPurchaseVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}
}