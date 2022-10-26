<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	var passwordCheck = false;
	var idCheck = false;
	//휴대폰
	$(function() {
		//휴대폰 번호 인증 
		var code2 = "";
		$("#phoneChk").click(
				function() {
					alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
					var phone = $("#phone").val();

					$.ajax({
						type : "GET",
						url : "phoneCheck.do?phone=" + phone,
						cache : false,
						success : function(data) {
							if (data == "error") {
								alert("휴대폰 번호가 올바르지 않습니다.")
								$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
								$(".successPhoneChk").css("color", "red");
								$("#phone").attr("autofocus", true);
							} else {
								$("#phone2").attr("disabled", false);
								$("#phoneChk2").css("display", "inline-block");
								$(".successPhoneChk").text(
										"인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
								$(".successPhoneChk").css("color", "green");
								$("#phone").attr("readonly", true);
								code2 = data;
							}
						}
					});
				});

		$("#phoneChk2").click(function() {
			if ($("#phone2").val() == code2) {
				$(".successPhoneChk").text("인증번호가 일치합니다.");
				$(".successPhoneChk").css("color", "green");
				$("#phoneDoubleChk").val("true");
				$("#phone2").attr("disabled", true);
				$('.submitbutton').attr('type', 'submit');
			} else {
				$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
				$(".successPhoneChk").css("color", "red");
				$("#phoneDoubleChk").val("false");
				$(this).attr("autofocus", true);
			}
		});

	});
	// 비밀번호 재확인
	$(function() {
		$('#user_passwordCheck').focusout(function() {
			console.log($('#user_passwordCheck').val());
			if ($('#user_passwordCheck').val() != $('#user_password').val()) {
				alert("비밀번호재확인필요");

			} else {
				passwordCheck = true;
			}
		})
	})
	// 	아이디 중복체크
	$(function() {
		$('#idCheck').click(function() {
			$.ajax({
				url : "user_idCheck.do",
				type : "post",
				data : {
					user_id : $('#user_id').val()
				},
				cache : false,
				success : function(result) {
					console.log(result);
					if (result == 0) {
						alert("아이디사용가능");
						idCheck = true;
					} else if (result == 1) {
						alert("아이디존재");
					} else {
						alert("그외");
					}
				},
				error : function() {
					alert("서버요청실패");
				}
			});

		});
	});

	$(function() {
		var emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		var email = $("#email");
		$("#sendMail").on("click", function() {
			if (email == "") {
				alert("이메일을 입력하지 않았습니다.");
			} else {
				if (!(emailRegex.test(email.val()))) {
					alert("이메일 입력이 제대로 되지 않았습니다.");
					return false;
				}
				$.ajax({
					type : 'POST',
					url : 'email_Send',
					data : {
						email : email.val()
					},
					success : function(data) {
						if (data == 'ok') {
							alert("인증번호를 발송했습니다.");
							$("#emailCheck").removeAttr("disabled");
						} else {
							alert("인증번호가 발송되지 않았습니다.");
						}
					},
					error : function(request, status) {
						alert("오류가 발생했습니다.");
					}
				});
			}
		});
	});

	function emailCheck() {
		var emailCheck = $("#emailCheck").val();
		if (emailCheck == "") {
			alert("인증번호를 입력하지 않았습니다.");
		} else {
			$.ajax({
				type : 'POST',
				url : 'email_Check',
				data : {
					emailCheck : emailCheck
				},
				success : function(data) {
					if (data == true) {
						alert("인증되었습니다.");
						$('.submitbutton').attr('type', 'submit')
					} else {
						alert("인증번호가 일치하지 않습니다.");
					}
				},
				error : function(request, status) {
					alert("오류가 발생했습니다.");
				}
			});
		}
	}
	function check() {
		if (passwordCheck == false) {
			alert("비밀번호재확인필요");
			return false;
		}
		if (idCheck == false) {
			alert("아이디중복체크하세요");
			return false;
		}

	}
	function emailCheck() {
		$('#config').show();
		$('#config1').hide();
	}
	function phoneCheck() {
		$('#config1').show();
		$('#config').hide();
	}
</script>
</head>
<form action="user_insert.do" method="post">
	<input type="text" name="user_id" id="user_id" placeholder='아이디'>
	<button type="button" id="idCheck">아이디중복체크</button>
	<br> <input type="password" name="user_password"
		id="user_password" placeholder='비밀번호'><br>
	<input type="password" name="user_passwordCheck"
		id="user_passwordCheck" placeholder='비밀번호재확인'><br>
	<input type="text" name="user_name" placeholder='이름'><br>
	<button type="button" class="submitbutton" onclick="check()">회원가입</button>
</form>
<button id="emailCheck" onclick="emailCheck()">이메일 인증하기</button>
<button id="phoneCheck" onclick="phoneCheck()">전화번호 인증하기</button>


<div id="config" style="display: none">
	<input id="email" class="text_box" type="text" placeholder="이메일 입력"
		required autofocus>
	<button id="sendMail" class="btn btn-primary btn-sm" type="button">발송하기</button>
	<input id='emailCheck' class='text_box' type='text' required disabled>
	<button id='check' class='btn btn-primary btn-sm'
		onclick='emailCheck()' type="button">인증확인</button>
</div>
<div id="config1" style="display: none">
	<input id="phone" type="text" name="phone" title="전화번호 입력" /> <span
		id="phoneChk" class="doubleChk">인증번호 보내기</span> <br /> <input
		id="phone2" type="text" name="phone2" title="인증번호 입력" disabled /> <span
		id="phoneChk2" class="doubleChk">인증확인</span> <span
		class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span> <input
		type="hidden" id="phoneDoubleChk" />
</div>


</body>

</html>