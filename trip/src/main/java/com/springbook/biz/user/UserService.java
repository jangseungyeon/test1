package com.springbook.biz.user;

public interface UserService {
	int insert(UserVO vo);

	int idCheck(UserVO vo);

	UserVO login(UserVO vo);

	UserVO info(UserVO vo);

	void update(UserVO vo);

	

}
