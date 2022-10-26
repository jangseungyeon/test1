package com.springbook.biz.reservation;

public class ReservationVO {
	private String res_id;	//예약 번호
	private String user_id;	//손님 아이디
	private String host_id;	//업주 아이디
	private String room_id;	//숙소 아이디
	private String room_name;	//숙소명
	private String room_img;		//숙소 이미지 파일명
	private String pay_date;	//결제 날짜
	private String pay_amount;	//결제금액
	private String res_num;	//예약 인원
	private int res_count;	//변경 가능 횟수 (DB 디폴트 초기 값 3)
	private String res_status;	//예약상태
	private String res_checkin;	//체크인 날짜
	private String res_checkout;	//체크아웃 날짜
	private int offset;	//페이징 처리에서 페이지 바꿀때마다 변하는, 맨 처음부터 데이터 건너뛰는 갯수 <= pagingVO에서 조정
	
	public String getRoom_img() {
		return room_img;
	}
	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int getRes_count() {
		return res_count;
	}
	public void setRes_count(int res_count) {
		this.res_count = res_count;
	}
	public String getRes_id() {
		return res_id;
	}
	public void setRes_id(String res_id) {
		this.res_id = res_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getHost_id() {
		return host_id;
	}
	public void setHost_id(String host_id) {
		this.host_id = host_id;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(String pay_amount) {
		this.pay_amount = pay_amount;
	}
	public String getRes_num() {
		return res_num;
	}
	public void setRes_num(String res_num) {
		this.res_num = res_num;
	}
	public String getRes_status() {
		return res_status;
	}
	public void setRes_status(String res_status) {
		this.res_status = res_status;
	}
	public String getRes_checkin() {
		return res_checkin;
	}
	public void setRes_checkin(String res_checkin) {
		this.res_checkin = res_checkin;
	}
	public String getRes_checkout() {
		return res_checkout;
	}
	public void setRes_checkout(String res_checkout) {
		this.res_checkout = res_checkout;
	}
	
	@Override
	public String toString() {
		return "ReservationVO [res_id=" + res_id + ", user_id=" + user_id + ", host_id=" + host_id + ", room_id="
				+ room_id + ", room_name=" + room_name + ", pay_date=" + pay_date + ", pay_amount=" + pay_amount
				+ ", res_num=" + res_num + ", res_count=" + res_count + ", res_status="
				+ res_status + ", res_checkin=" + res_checkin + ", res_checkout=" + res_checkout + "]";
	}
	
}
