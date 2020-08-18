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
	
	public boolean login(UserVO user,HttpSession session) throws Exception {
		boolean result= userDAO.login(user);
		if(result) {
			UserVO user2 = viewUser(user);
			session.setAttribute("id", user2.getId());
			session.setAttribute("name", user2.getName());
		}
		return result;
	}
	
	public void logout(HttpSession session) {
		session.invalidate();
	}


}