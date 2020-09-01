package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.CodeMasterVO;


@Repository
public class CodeMasterDAOImpl implements CodeMasterDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.codeMasterMapper";

	public CodeMasterVO read(int id) throws Exception {
		CodeMasterVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}
 
	public List<CodeMasterVO> readList() throws Exception {
		List<CodeMasterVO> codeMasterlist = new ArrayList<CodeMasterVO>();
		codeMasterlist = sqlSession.selectList(namespace + ".selectAll");
		return codeMasterlist;
	}
	
	public void add(CodeMasterVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void update(CodeMasterVO codeMaster) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".update", codeMaster);
	}
	

}