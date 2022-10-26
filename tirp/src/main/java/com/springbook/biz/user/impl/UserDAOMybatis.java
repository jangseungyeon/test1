package com.springbook.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;

@Repository
public class UserDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertUser(UserVO vo) {
		System.out.println("insertBoard");
		System.out.println("insertUser: " + vo);
		mybatis.insert("UserDAO.user_insert", vo);
		System.out.println("mybatis_user");
	}

	public int user_idCheck(UserVO vo) {
		System.out.println("user_idCheck");
		System.out.println("idCheck: " + vo);
		if (vo.getUser_id() != null || !vo.getUser_id().equals("")) {
			System.out.println("아이디체크 널아님");
			vo = mybatis.selectOne("UserDAO.idCheck", vo);
			if(vo!=null) {
				return 1;
			}else {
				return 0;
			}
		} else {
			return 3;
		}
	}
	
	public UserVO user_login(UserVO vo) {
		System.out.println("user_login: "+vo);
		return mybatis.selectOne("UserDAO.login",vo);
	}

	public UserVO getUser(UserVO vo) {
		System.out.println("===>mybatis getBoard() 기능처리" + vo);
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}
}