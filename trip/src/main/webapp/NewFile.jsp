<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(function() {
		$('.bxslider').bxSlider({

			auto : true,
			autoControls : true,
			stopAutoOnClick : true,
			//     mode: 'fade',
			pager : true,
			//     captions: true,
			slideWidth : 600
		});
	});
</script>
<style>
</style>
</head>
<body>


			<div class="inr ly_wrap">
				<div class="inr left">
					<p class="ment">
						고객님,<br> <strong>어떤 여행을 꿈꾸시나요?</strong>
					</p>
					<div class="js_tabs no_division">
						<ul class="tabs">
							<li class="fx-cobrand-pkg selected" style="display: block;"><a
								href="#tabCon01">패키지</a></li>
							<li class="fx-cobrand-air"><a href="#tabCon02">항공</a></li>
							<li class="fx-cobrand-htl"><a href="#tabCon03">호텔</a></li>
						</ul>
						<div class="panels">
							<div id="tabCon01" class="panel fx-cobrand-pkg selected"
								style="display: block;">
								<div class="cont">
									<div class="row">
										<input type="text" title="검색어입력" placeholder="어디로 떠나세요?"
											class="input_keyword pos js_show">
										<div id="select_local" class="lypop_seach_local"
											style="display: none;">
											<div class="ly_wrap">
												<!---->
												<div class="search_local_wrap">
													<div class="js_tabs v-tabs">
														<ul class="tabs">
															<li class="selected" style="width: 100%;"><a
																href="#tabCon01">주요도시</a></li>
														</ul>
														<div class="panels pt0">
															<div id="tabCon01" class="panel area_point selected">
																<div class="js_tabs place_list">
																	<ul class="tabs">
																		<li class="selected"><a href="#place01">지금 여행
																				가능 </a></li>
																		<li class=""><a href="#place01">동남아/대만/서남아</a></li>
																		<li class=""><a href="#place01">유럽/아프리카</a></li>
																		<li class=""><a href="#place01">괌/사이판/호주/뉴질랜드</a></li>
																		<li class=""><a href="#place01">미주/중남미/하와이</a></li>
																		<li class=""><a href="#place01">일본</a></li>
																		<li class=""><a href="#place01">중국/홍콩/몽골/중앙아시아</a></li>
																		<li class=""><a href="#place01">국내</a></li>
																	</ul>
																	<div class="panels place_scroll">
																		<div id="place01" class="panel selected">
																			<ul class="place_items">
																				<li><a href="#none"><span>대만</span>
																					<!----></a></li>
																				<li><a href="#none"><span>사이판</span>
																					<!----></a></li>
																				<li><a href="#none"><span>괌</span>
																					<!----></a></li>
																				<li><a href="#none"><span>호놀룰루</span>
																					<!----></a></li>
																				<li><a href="#none"><span>다낭</span>
																					<!----></a></li>
																				<li><a href="#none"><span>보라카이</span>
																					<!----></a></li>
																				<li><a href="#none"><span>몽골</span>
																					<!----></a></li>
																				<li><a href="#none"><span>도쿄(동경)</span>
																					<!----></a></li>
																				<li><a href="#none"><span>오사카</span>
																					<!----></a></li>
																				<li><a href="#none"><span>후쿠오카(규슈)</span>
																					<!----></a></li>
																				<li><a href="#none"><span>삿포로(홋카이도)</span>
																					<!----></a></li>
																				<li><a href="#none"><span>푸껫</span>
																					<!----></a></li>
																				<li><a href="#none"><span>세부</span>
																					<!----></a></li>
																				<li><a href="#none"><span>싱가포르</span>
																					<!----></a></li>
																				<li><a href="#none"><span>방콕</span>
																					<!----></a></li>
																				<li><a href="#none"><span>몰디브</span>
																					<!----></a></li>
																				<li><a href="#none"><span>칸쿤</span>
																					<!----></a></li>
																				<li><a href="#none"><span>영국</span>
																					<!----></a></li>
																				<li><a href="#none"><span>스페인</span>
																					<!----></a></li>
																				<li><a href="#none"><span>터키</span>
																					<!----></a></li>
																				<li><a href="#none"><span>이탈리아</span>
																					<!----></a></li>
																				<li><a href="#none"><span>스위스</span>
																					<!----></a></li>
																				<li><a href="#none"><span>프랑스</span>
																					<!----></a></li>
																				<li><a href="#none"><span>그리스</span>
																					<!----></a></li>
																				<li><a href="#none"><span>두바이</span>
																					<!----></a></li>
																				<li><a href="#none"><span>체코</span>
																					<!----></a></li>
																				<li><a href="#none"><span>오스트리아</span>
																					<!----></a></li>
																				<li><a href="#none"><span>핀란드</span>
																					<!----></a></li>
																				<li><a href="#none"><span>로스앤젤레스</span>
																					<!----></a></li>
																				<li><a href="#none"><span>샌프란시스코</span>
																					<!----></a></li>
																				<li><a href="#none"><span>라스베이거스</span>
																					<!----></a></li>
																				<li><a href="#none"><span>뉴욕</span>
																					<!----></a></li>
																				<li><a href="#none"><span>캐나다</span>
																					<!----></a></li>
																				<li><a href="#none"><span>밴쿠버</span>
																					<!----></a></li>
																				<li><a href="#none"><span>토론토</span>
																					<!----></a></li>
																				<li><a href="#none"><span>밴프</span>
																					<!----></a></li>
																				<li><a href="#none"><span>시드니</span>
																					<!----></a></li>
																				<li><a href="#none"><span>우즈베키스탄</span>
																					<!----></a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="popup_footer_wrap">
													<div class="popup_btn_box">
														<a href="#none" class="txt js_cls">닫기</a>
													</div>
												</div>
											</div>
										</div>
										<div id="select_autocomplete"
											class="lypop_seach_local autocomplete"
											style="width: 410px; display: none;">
											<div class="ly_wrap">
												<div class="list_srchword_wrap pkg_srchLyr">
													<ul id="list_srchword" class="list_srchword"></ul>
												</div>
												<div class="popup_footer_wrap">
													<div class="popup_btn_box">
														<a href="#none" class="txt">닫기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!---->
									<div class="row" style="overflow: auto;">
										<span data-v-3439b2b7="" class="select_item pos"><div
												data-v-3439b2b7="" class="sb selectbox">
												<div data-v-3439b2b7="" class="display">
													<div data-v-3439b2b7="" class="text">인천/김포 출발</div>
													<div data-v-3439b2b7="" class="arrow_btn">
														<span data-v-3439b2b7="" class="arrow"></span>
													</div>
												</div>
												<ul data-v-3439b2b7="" class="selectbox items"
													style="display: none;">
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class selected"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">서울(인천/김포)</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">부산</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">대구</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">청주</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">광주(무안)</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">제주</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">양양</div>
														</div></li>
													<li data-v-9c25aa54=""
														class="empty_vue_select_box_row_class"><div
															data-v-9c25aa54="" class="item">
															<div data-v-9c25aa54="" class="text">강원</div>
														</div></li>
												</ul>
											</div></span> <a href="#none" class="btn"><span class="icn cal">여행시작일
												선택</span> <!----></a>
										<div class="lypop_calendar"
											style="left: 167px; margin-top: 5px; display: none;">
											<div class="ly_wrap">
												<div class="calendar_wrap">
													<a href="#none" class="prev off"><span class="blind">이전달</span></a>
													<a href="#none" class="next"><span class="blind">다음달</span></a>
													<div>
														<div class="inr">
															<div class="header">
																<p>2022년 10월</p>
																<span class="form_holder check"><input
																	type="checkbox" id="checkHeaderMonth202210"
																	class="inpt_checkbox exceptClick" value="202210">
																	<label for="checkHeaderMonth202210"
																	class="label_checkbox">월전체</label></span>
															</div>
															<div class="calendar_area">
																<div class="week">
																	<p class="sun">일</p>
																	<p>월</p>
																	<p>화</p>
																	<p>수</p>
																	<p>목</p>
																	<p>금</p>
																	<p class="sat">토</p>
																</div>
																<div class="calendar">
																	<ul class="day">
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="sat before">
																			<!----> <span>1</span> <!---->
																		</li>
																	</ul>
																	<ul class="day">
																		<li class="sun before">
																			<!----> <span>2</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>3</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>4</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>5</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>6</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>7</span> <!---->
																		</li>
																		<li class="sat before">
																			<!----> <span>8</span> <!---->
																		</li>
																	</ul>
																	<ul class="day">
																		<li class="sun before">
																			<!----> <span>9</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>10</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>11</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>12</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>13</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>14</span> <!---->
																		</li>
																		<li class="sat before">
																			<!----> <span>15</span> <!---->
																		</li>
																	</ul>
																	<ul class="day">
																		<li class="sun before">
																			<!----> <span>16</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>17</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>18</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>19</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>20</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>21</span> <!---->
																		</li>
																		<li class="sat before">
																			<!----> <span>22</span> <!---->
																		</li>
																	</ul>
																	<ul class="day">
																		<li class="sun before">
																			<!----> <span>23</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>24</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>25</span> <!---->
																		</li>
																		<li class="before">
																			<!----> <span>26</span> <!---->
																		</li>
																		<li class="before today">
																			<!----> <span>27</span>
																			<p>TODAY</p>
																		</li>
																		<li class="before">
																			<!----> <span>28</span> <!---->
																		</li>
																		<li class="sat before">
																			<!----> <span>29</span> <!---->
																		</li>
																	</ul>
																	<ul class="day">
																		<li class="sun before">
																			<!----> <span>30</span> <!---->
																		</li>
																		<li class=""><a href="#none"><span>31</span>
																				<!----></a> <!----> <!----></li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!----> <!---->
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div class="inr right">
															<div class="header">
																<p>2022년 11월</p>
																<span class="form_holder check"><input
																	type="checkbox" id="checkHeaderMonth202211"
																	class="inpt_checkbox exceptClick" value="202211">
																	<label for="checkHeaderMonth202211"
																	class="label_checkbox">월전체</label></span>
															</div>
															<div class="calendar_area">
																<div class="week">
																	<p class="sun">일</p>
																	<p>월</p>
																	<p>화</p>
																	<p>수</p>
																	<p>목</p>
																	<p>금</p>
																	<p class="sat">토</p>
																</div>
																<div class="calendar">
																	<ul class="day">
																		<li class="">
																			<!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!---->
																		</li>
																		<li class=""><a href="#none"><span>1</span> <!----></a>
																			<!----></li>
																		<li class=""><a href="#none"><span>2</span> <!----></a>
																			<!----></li>
																		<li class=""><a href="#none"><span>3</span> <!----></a>
																			<!----></li>
																		<li class=""><a href="#none"><span>4</span> <!----></a>
																			<!----></li>
																		<li class="sat"><a href="#none"><span>5</span>
																				<!----></a> <!----></li>
																	</ul>
																	<ul class="day">
																		<li class="sun"><a href="#none"><span>6</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>7</span> <!----></a>
																			<!----></li>
																		<li class=""><a href="#none"><span>8</span> <!----></a>
																			<!----></li>
																		<li class=""><a href="#none"><span>9</span> <!----></a>
																			<!----></li>
																		<li class=""><a href="#none"><span>10</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>11</span>
																				<!----></a> <!----></li>
																		<li class="sat"><a href="#none"><span>12</span>
																				<!----></a> <!----></li>
																	</ul>
																	<ul class="day">
																		<li class="sun"><a href="#none"><span>13</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>14</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>15</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>16</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>17</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>18</span>
																				<!----></a> <!----></li>
																		<li class="sat"><a href="#none"><span>19</span>
																				<!----></a> <!----></li>
																	</ul>
																	<ul class="day">
																		<li class="sun"><a href="#none"><span>20</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>21</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>22</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>23</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>24</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>25</span>
																				<!----></a> <!----></li>
																		<li class="sat"><a href="#none"><span>26</span>
																				<!----></a> <!----></li>
																	</ul>
																	<ul class="day">
																		<li class="sun"><a href="#none"><span>27</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>28</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>29</span>
																				<!----></a> <!----></li>
																		<li class=""><a href="#none"><span>30</span>
																				<!----></a> <!----></li>
																		<li class="">
																			<!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!---->
																		</li>
																		<li class="">
																			<!----> <!---->
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
													<div>
														<!---->
														<!---->
													</div>
												</div>
											</div>
											<div class="option_wrap">
												<strong class="tit">여행 시작일</strong> <span class="date off">캘린더에서
													여행 시작일을 선택해주세요</span> <span class="date"></span> <span
													class="right_cont"><button disabled="disabled"
														class="btn pink">선택완료</button></span>
											</div>
										</div>
									</div>
									<div class="form_wrap">
										<span class="form_holder check"><input type="checkbox"
											id="chkDefaultBl01" class="inpt_checkbox"> <label
											for="chkDefaultBl01" class="label_checkbox">항공권은<br>있어요
										</label></span> <span class="form_holder check"><input type="checkbox"
											id="chkDefaultBl02" class="inpt_checkbox"> <label
											for="chkDefaultBl02" class="label_checkbox">우리끼리만<br>여행할래요
										</label></span>
									</div>
									<button type="submit" class="btn big gray">패키지 검색</button>
								</div>
							</div>
							<div id="tabCon02" class="panel fx-cobrand-air">
								<!---->
							</div>
							<div id="tabCon03" class="panel fx-cobrand-htl">
								<!---->
							</div>
						</div>
					</div>
					<div class="banner_wrap" style="display: none;">
						<a href="#"><img
							src="https://image.hanatour.com/usr/static/img/pc/man/banner_floating.png"
							title="하나투어의 새로운 패키지가 궁금하세요?" data-src=""
							alt="하나투어의 새로운 패키지가 궁금하세요?"></a> <a href="#" class="cls"><img
							src="https://image.hanatour.com/usr/static/img/pc/man/banner_floating_close.png"
							title="배너 닫기" data-src="" alt="배너 닫기"></a>
					</div>
				</div>
				<div class="inr right">
					<div
						class="swiper-container prevNext pager control main v-swiper2 swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
						<div class="swiper-wrapper" id="swiper-wrapper-8d447bec4579876d"
							aria-live="off"
							style="transition-duration: 0ms; transform: translate3d(-8140px, 0px, 0px);">
							<a href="#"
								class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
								data-swiper-slide-index="9" role="group" aria-label="1 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/06/PL00113197/PL00113197_2.jpg"
										title="" data-src=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide swiper-slide-duplicate-active"
								data-swiper-slide-index="0" role="group" aria-label="2 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113356/PL00113356.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="1"
								role="group" aria-label="3 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113346/PL00113346.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="2"
								role="group" aria-label="4 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113353/PL00113353.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="3"
								role="group" aria-label="5 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113325/PL00113325.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="4"
								role="group" aria-label="6 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113350/PL00113350.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="5"
								role="group" aria-label="7 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/07/PL00113229/PL00113229.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="6"
								role="group" aria-label="8 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113370/PL00113370.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="7"
								role="group" aria-label="9 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/08/PL00095111/PL00095111.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#" class="swiper-slide" data-swiper-slide-index="8"
								role="group" aria-label="10 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/09/PL00113329/PL00113329.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#"
								class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next"
								data-swiper-slide-index="9" role="group" aria-label="11 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/06/PL00113197/PL00113197_2.jpg"
										title="" data-src="" alt=""></span>
									<!---->
									<!---->
								</div></a><a href="#"
								class="swiper-slide swiper-slide-duplicate swiper-slide-active"
								data-swiper-slide-index="0" role="group" aria-label="12 / 12"
								style="width: 740px; cursor: pointer;"><div class="cont">
									<span class="img"><img
										src="https://image.hanatour.com/usr/manual/md/2022/10/PL00113356/PL00113356.jpg"
										title="" data-src=""></span>
									<!---->
									<!---->
								</div></a>
						</div>
						<div class="control" style="visibility: visible;">
							<a href="#" class="prev" tabindex="0" role="button"
								aria-label="Previous slide"
								aria-controls="swiper-wrapper-8d447bec4579876d"><span
								class="blind">이전</span></a> <a href="#" class="next" tabindex="0"
								role="button" aria-label="Next slide"
								aria-controls="swiper-wrapper-8d447bec4579876d"><span
								class="blind">다음</span></a> <a href="#" class="btn_cntrl stop"><span
								class="blind">control</span></a> <span
								class="total swiper-pagination-fraction"
								style="visibility: visible;"><span>1</span>/<span>10</span></span>
						</div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
				</div>
			</div>
			<div class="swiper_bg">
				<div class="maintop bgItem on"
					style="background: url(&quot;https://image.hanatour.com/usr/manual/md/2022/10/PL00113356/PL00113356_bg.jpg&quot;) 50% 0px no-repeat;"></div>
				<div class="maintop bgItem" style="background: rgb(208, 206, 246);"></div>
				<div class="maintop bgItem"
					style="background: url(&quot;https://image.hanatour.com/usr/manual/md/2022/10/PL00113353/PL00113353_bg.jpg&quot;) 50% 0px no-repeat;"></div>
				<div class="maintop bgItem"
					style="background: url(&quot;https://image.hanatour.com/usr/manual/md/2022/10/PL00113325/PL00113325_bg.jpg&quot;) 50% 0px no-repeat;"></div>
				<div class="maintop bgItem" style="background: rgb(205, 241, 235);"></div>
				<div class="maintop bgItem"
					style="background: url(&quot;https://image.hanatour.com/usr/manual/md/2022/07/PL00113229/PL00113229_bg.jpg&quot;) 50% 0px no-repeat;"></div>
				<div class="maintop bgItem" style="background: rgb(211, 242, 223);"></div>
				<div class="maintop bgItem" style="background: rgb(207, 240, 250);"></div>
				<div class="maintop bgItem" style="background: rgb(208, 206, 246);"></div>
				<div class="maintop bgItem" style="background: rgb(201, 229, 247);"></div>
			</div>
		</div>
	</div>




</body>
</html>