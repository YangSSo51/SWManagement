package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.sw.web.domain.UserVO;

public interface UserService {
	public UserVO readUser(int id) throws Exception;
	public List<UserVO> readUserList() throws Exception;
	public void addUser(UserVO user) throws Exception;
	public void deleteUser(int id) throws Exception; 
	public void updateUser(UserVO user) throws Exception;
	public boolean login(UserVO vo,HttpSession session) throws Exception;
	public UserVO viewUser(UserVO vo) throws Exception;
	public void logout(HttpSession session) throws Exception;
	
	public int idChk(String user_id) throws Exception; //아이디 중복체크 플랜B
	
	
}
