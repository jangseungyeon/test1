package com.springbook.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/user_insert.do")
	@ResponseBody
    public void user_insert(UserVO vo) {
		System.out.println("isnsertuser");
		userService.insert(vo);
	}
	@RequestMapping("/user_idCheck.do")
	@ResponseBody
    public int user_idCheck(UserVO vo) {
		System.out.println("idcheck"+vo);
		return userService.idCheck(vo);
	}
	@RequestMapping("/user_login.do")
	@ResponseBody
    public void user_login(UserVO vo,HttpSession session) {
		System.out.println("user_login"+vo);
		vo=userService.login(vo);
		if(vo!=null) {
		String user_id=vo.getUser_id();
		session.setAttribute("user_id", user_id);
		System.out.println("로그인성공");}
		else {
			System.out.println("로그인실패");
			
		}
		
	}
	

	
}
