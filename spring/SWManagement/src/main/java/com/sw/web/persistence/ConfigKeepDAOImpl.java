package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.ConfigKeepVO;


@Repository
public class ConfigKeepDAOImpl implements ConfigKeepDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.configKeepMapper";

	
	@Override
	public void add(ConfigKeepVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	public List<ConfigKeepVO> readList() throws Exception {
		List<ConfigKeepVO> list = new ArrayList<ConfigKeepVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}
	
	@Override
	public ConfigKeepVO readById(int id) throws Exception {
		ConfigKeepVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}
	
	@Override
	public List<ConfigKeepVO> readByAssetId(int id) throws Exception {
		List<ConfigKeepVO> list = new ArrayList<ConfigKeepVO>();
		list = sqlSession.selectList(namespace + ".selectByAssetId",id);
		return list;
	}


	@Override
	public void update(ConfigKeepVO vo) throws Exception {
	    sqlSession.update(namespace + ".update", vo);
	}
	
	@Override
	public void updateAdmin(ConfigKeepVO vo) throws Exception {
	    sqlSession.update(namespace + ".updateAdmin", vo);
	}
	
	@Override
	public void delete(int id) throws Exception {
		sqlSession.delete(namespace + ".delete", id);
	}



}