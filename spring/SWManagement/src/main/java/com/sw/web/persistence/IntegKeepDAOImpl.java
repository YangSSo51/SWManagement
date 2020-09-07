package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.IntegKeepVO;
import com.sw.web.domain.UserVO;


@Repository
public class IntegKeepDAOImpl implements IntegKeepDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.integKeepMapper";

	
	@Override
	public void add(IntegKeepVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);		
	}

	public List<IntegKeepVO> readList() throws Exception {
		List<IntegKeepVO> list = new ArrayList<IntegKeepVO>();
		list = sqlSession.selectList(namespace + ".selectAll");
		return list;
	}
	
	@Override
	public IntegKeepVO readById(int id) throws Exception {
		IntegKeepVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}
	
	@Override
	public List<IntegKeepVO> readByAssetId(int id) throws Exception {
		List<IntegKeepVO> list = new ArrayList<IntegKeepVO>();
		list = sqlSession.selectList(namespace + ".selectByAssetId",id);
		return list;
	}

	@Override
	public List<IntegKeepVO> readBySearch(int id) throws Exception {
		List<IntegKeepVO> list = new ArrayList<IntegKeepVO>();
		list = sqlSession.selectList(namespace + ".selectBySerch",id);
		return list;
	}


	@Override
	public void update(IntegKeepVO vo) throws Exception {
	    sqlSession.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(int id) throws Exception {
		sqlSession.delete(namespace + ".delete", id);
	}


}