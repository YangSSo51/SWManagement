package com.sw.web.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sw.web.domain.UserVO;


@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sw.web.mapper.userMapper";

	public UserVO read(int id) throws Exception {
		UserVO vo = sqlSession.selectOne(namespace+".selectById", id);
		return vo;   
	}
 
	public List<UserVO> readList() throws Exception {
		List<UserVO> userlist = new ArrayList<UserVO>();
		userlist = sqlSession.selectList(namespace + ".selectAll");
		return userlist;
	}
	
	public void add(UserVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", id);
	}

	public void update(UserVO user) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".update", user);
	}
	
	
	
	public boolean login(UserVO user) throws Exception{
		String name=sqlSession.selectOne(namespace+".login",user);
		System.out.println("이름: "+ name);
		return (name==null)?false:true;
	}
	
		
	public UserVO viewUser(UserVO user) throws Exception {
		return sqlSession.selectOne(namespace+".viewuser",user);
	}
	
	
	//아이디 중복체크 플랜b
	public int idChk(String user_id) {		
		int result = sqlSession.selectOne(namespace+ ".idChk", user_id);
		System.out.println("===> Mybatis로 idCheck");
		return result;
	}
	
	
	
	
	


}