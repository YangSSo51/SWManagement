package com.sw.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.web.domain.UserVO;
import com.sw.web.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserDAO userDAO;

	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public UserVO readUser(int id) throws Exception {
		return userDAO.read(id);
	}
	
	public List<UserVO> readUserList() throws Exception{
		return userDAO.readList();
	}
	
	public void addUser(UserVO user) throws Exception {
		userDAO.add(user);
	}
	
	public void deleteUser(int id) throws Exception {
		userDAO.delete(id);
	}
	
	public void updateUser(UserVO user) throws Exception {
		userDAO.update(user);
	}
	
	public UserVO viewUser(UserVO user) throws Exception {
		return userDAO.viewUser(user);
	}
	
	@Override
	public boolean login(UserVO user,HttpSession session) throws Exception {
		boolean result= userDAO.login(user);
		if(result) {
			UserVO user2 = viewUser(user);
			session.setAttribute("id", user2.getId());
			session.setAttribute("name", user2.getUser_id());
		}
		return result;
	}
	
	/*
	@Override
	public UserVO login_e(UserVO vo) throws Exception {
		return userDAO.login(user)
	}
	*/
	public void logout(HttpSession session) {
		session.invalidate();
	}
	

	
	
	
	// 아이디 중복체크 플랜 B
	@Override
	public int idChk(String user_id) throws Exception {
		int result = userDAO.idChk(user_id);
		return result;
	}
	

}