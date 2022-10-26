package com.springbook.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAOMybatis userDAO;

	@Override
	public int insert(UserVO vo) {
		System.out.println("11");
		return userDAO.insertUser(vo);

	}
	@Override
	public int idCheck(UserVO vo) {
		System.out.println("11");
		return userDAO.user_idCheck(vo);
	}
	@Override
	public UserVO login(UserVO vo) {
		System.out.println("user_login");
		return userDAO.user_login(vo);
	}

}
