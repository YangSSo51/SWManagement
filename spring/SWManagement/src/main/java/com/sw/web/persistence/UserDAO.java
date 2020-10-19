package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.UserVO;

public interface UserDAO {
	public void add(UserVO user) throws Exception;
	public List<UserVO> readList() throws Exception;
	public UserVO read(int id) throws Exception;
	public void delete(int id) throws Exception;
	public void update(UserVO user) throws Exception;
	public boolean login(UserVO user)throws Exception;

	public UserVO viewUser(UserVO user)throws Exception;
	

	public int idChk(String user_id) throws Exception; 
	
}
