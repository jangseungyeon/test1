package com.springbook.biz.user;


public interface UserService {
	void insert(UserVO vo);

	int idCheck(UserVO vo);

	UserVO login(UserVO vo);
	
	UserVO getUser(UserVO vo);
}
