package com.sw.web.persistence;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.sw.web.domain.CodeDetailVO;

@Repository
public class CodeDetailDAOImpl implements CodeDetailDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.codeDetailMapper";
	

	public void add(CodeDetailVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}


	public List<CodeDetailVO> readList() throws Exception {
		List<CodeDetailVO> vo = new ArrayList<CodeDetailVO>();
		vo = sqlSession.selectList(namespace + ".selectAll");
		return vo;
	}

	public CodeDetailVO read(int id) throws Exception {
		CodeDetailVO vo = sqlSession.selectOne(namespace + ".selectById", id);
		return vo;
	}

	public void update(CodeDetailVO vo) throws Exception {
		sqlSession.update(namespace + ".update", vo);
	}

}
