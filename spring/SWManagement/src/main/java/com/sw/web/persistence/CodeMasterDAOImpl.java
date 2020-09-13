package com.sw.web.persistence;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.CodeMasterVO;

@Repository
public class CodeMasterDAOImpl implements CodeMasterDAO {
	
	@Autowired
	private SqlSession sqlSession;
	;
	private static final String namespace = "com.sw.web.mapper.codeMasterMapper";
	

	
	public void add(CodeMasterVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	
	@Override
	public List<CodeMasterVO> readList() throws Exception {
		List<CodeMasterVO> vo = new ArrayList<CodeMasterVO>();
		vo = sqlSession.selectList(namespace + ".selectAll");
		return vo;

	}

	
	public CodeMasterVO read(int id) throws Exception {
		CodeMasterVO vo = sqlSession.selectOne(namespace + ".selectById", id);
		return vo;
		
	}
	
	public CodeMasterVO read(String reprec) throws Exception {
		CodeMasterVO vo = sqlSession.selectOne(namespace + ".selectByCodeName", reprec);
		return vo;
		
	}

	
	public void update(CodeMasterVO vo) throws Exception {
		sqlSession.update(namespace + ".update", vo);
	}

}
