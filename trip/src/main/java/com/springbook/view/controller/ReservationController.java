package com.springbook.view.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.reservation.ReservationService;
import com.springbook.biz.reservation.ReservationVO;

import java.util.Calendar;

@Controller
@SessionAttributes("reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	//숙소 예약 등록 (숙소 상세 페이지에서 숙소 예약 => 최대한 넘겨줄수 있는 값들 다 넘겨줘야 함)
	@RequestMapping(value="/insertReservation.do")
	public String insertReservation(ReservationVO rvo){
		System.out.println("숙소 예약 등록 시작");
		reservationService.insertReservation(rvo);
		System.out.println("숙소 예약 등록 성공");
		return "getReservationList.do";
	}
	
//	//숙소 예약 수정, 변경 (GET 요청, 날짜에 따라 예약 변경이 불가능하게 하거나 시간이 지나면 자동적으로 사용 완료라고 변경하게 하거나 할때 이 수정 메소드를 타야함)
	@GetMapping(value="/updateReservation.do")
	public String updateReservation(@RequestParam(value="user_id") String user_id) throws Exception {
		System.out.println("숙소 예약 수정 시작");
		if(user_id != null) {
			
			ReservationVO rvo = null;
			rvo = new ReservationVO();
	
			rvo.setUser_id(user_id); //쿼리스트링으로 받아온 user_id를 rvo 객체 안에 세팅
			List<ReservationVO>rvo_t = reservationService.getReservationList(rvo); 
			//rvo를 목록 불러오는 메소드에 넣어 일단
			//user_id에 해당하는 목록 불러옴
			
			//Date 자료형 변수 미리 세팅
			Date res_cancel_ci = null;
			Date res_cancel_cim3 = null;
			Date today = null;
			
			//오늘 날짜 끌어옴
			today = new Date();
	
			//날짜 계산을 위해 Calendar 클래스 객체 생성
			Calendar cal = Calendar.getInstance();
	
			//Date 자료형 객체를 받기 위해 포맷 형식 객체 만듬, yyyy-mm-dd로 형식 맞춤
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
			
			//유저 아이디 기준으로 구해온 예약 목록 현황을 하나 하나 돌면서 체크
			for(ReservationVO rvo_t1 : rvo_t) {
				//체크인 날짜 문자열에서 Date 자료형으로 변환하면서 
				res_cancel_ci = formatter.parse(rvo_t1.getRes_checkin());
				
//				//체크인 날짜를 Calendar 객체에 주입
				cal.setTime(res_cancel_ci);
				
				//체크인 날짜에서 3일 전 (수정/취소 변경 가능 기한) 계산
				cal.add(Calendar.DATE, -3);
				
				//계산한 날짜를 Date 자료형으로 다시 받음
				res_cancel_cim3 = cal.getTime();
				
				if(today.compareTo(res_cancel_cim3) <= 0) {
					reservationService.updateReservation(rvo);
				}
			}
				
			}
		return null;
	}
}
//	}
//	
//	//숙소 예약 수정, 변경(POST 요청, 미리 정해둔 예약 기간을 똑같이 가져가면서 날짜를 바꿀때 이 수정을 씀)
//	@PostMapping(value="/updateReservation.do")
//	public String updateReservation()
//	
//	//숙소 예약 삭제 (일정 크게 변경해야하기 때문에(기존 일정보다 며칠 추가하거나 삭제하거나 등등) 취소하거나  
