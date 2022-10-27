package com.springbook.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;


@Controller
public class UserController {
	@Autowired
	private UserService userService;

	// 회원추가
	@RequestMapping("/user_insert.do")
	public String user_insert(UserVO vo) {
		System.out.println("isnsertuser");
		vo.setUser_type("own");
		int insert = userService.insert(vo);
		if (insert == 0) {
			return "insert.jsp?insert=0";
		} else {
			return "index.jsp?insert=1";
		}

	}
	
//	회원수정
	@RequestMapping("/user_update.do")
	public String updateBoard(@ModelAttribute("user") UserVO vo, HttpSession session) {
		int a =1;
		int b =1;
//		if (vo.getUser_id().equals(session.getAttribute("user_id").toString())) {
			if (a==b) {
			userService.update(vo);
			System.out.println("컨트롤러 업데이트 vo"+vo);
			return "myinfo.jsp";
		} else {
			return "getBoard.do?error=1";
		} 

	}

	// 아이디중복체크
	@RequestMapping("/user_idCheck.do")
	@ResponseBody
	public int user_idCheck(UserVO vo) {
		System.out.println("idcheck" + vo);
		return userService.idCheck(vo);
	}

	// 로그인
	@RequestMapping("/user_login.do")
	public String user_login(UserVO vo, HttpSession session, Model model) {
		System.out.println("user_login" + vo);
		vo = userService.login(vo);
		if (vo != null) {
			String user_id = vo.getUser_id();
			String user_name = vo.getUser_name();
			session.setAttribute("user_id", user_id);
			session.setAttribute("user_name", user_name);
			model.addAttribute("user_password", vo.getUser_password());
			System.out.println("로그인성공");
			return "index.jsp";
		} else {
			System.out.println("로그인실패");
return "user_login.jsp?fail=1";
		}
		

	}
	
//	내 정보 확인
	@RequestMapping("/user_info.do")
	public String user_info(UserVO vo, HttpSession session, Model model) {
		System.out.println("user_login" + vo);
		vo.setUser_id((String)session.getAttribute("user_id"));
		vo = userService.info(vo);
		if (vo != null) {
			String user_id = vo.getUser_id();
			String user_name = vo.getUser_name();
			session.setAttribute("user_id", user_id);
			session.setAttribute("user_name", user_name);
			model.addAttribute("user_password", vo.getUser_password());
			model.addAttribute("user_birth", vo.getUser_birth());
			model.addAttribute("user_gender", vo.getUser_gender());
			model.addAttribute("user_email", vo.getUser_email());
			model.addAttribute("user_phone", vo.getUser_phone());
			model.addAttribute("user_address1", vo.getUser_address1());
			model.addAttribute("user_address2", vo.getUser_address2());
			
			
		
			return "myinfo.jsp";
		} else {
			
			return "index.jsp?fail=1";
		}
		
		
	}

	// 카카오로그인
	@RequestMapping("/kakao_login.do")
	public String kakao_login(UserVO vo) {
		vo.setUser_type("kakao");
		System.out.println("kakao_login" + vo);
		if (userService.login(vo) == null) {
			System.out.println("카카오회원추가");
			userService.insert(vo);
			return "user_login.do";
		} else {
			System.out.println("카카오로그인");
			return "user_login.do";
		}

	}
	
	
	//네이버로그인
	@RequestMapping("/naver_login.do")
	public String naver_login(UserVO vo) {
		vo.setUser_type("naver");
		System.out.println("네이버로그인"+vo);
		if (userService.login(vo) == null) {
			System.out.println("네이버회원추가");
			userService.insert(vo);
			return "user_login.do";
		} else {
			System.out.println("네이버로그인");
			return "user_login.do";
		}
	}
	
	// 아이디중복체크
	@RequestMapping("/user_logout.do")
	public String user_logout(HttpSession session) {
		System.out.println("로그아웃");
		session.invalidate();
		return "index.jsp";
	}

}
