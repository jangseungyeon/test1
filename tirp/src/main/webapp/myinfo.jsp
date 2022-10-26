<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@page import="com.springbook.biz.user.UserVO"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>내 정보 관리</title>
<!-- <link rel="stylesheet" type="text/css" href="./css/addMember.css"> -->

<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>회원가입</title>
<script>
var formCheck1=true;
var formCheck2=true;
var formCheck3=true;
var formCheck4=true;
var formCheck5=true;
var formCheck6=true;
   var blank_pattern = /[*\s*]/g;
   var special_pattern = /[\W]/gi;
   var phone_pattern = /^\d{4}$/;
   var birth_pattern = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
   var email_pattern = /^[a-z0-9.\-_]+@([a-z0-9-]+\.)+[a-z]{2,6}$/;
 

   function sample6_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  var addr = '';
                  var extraAddr = '';

                  if (data.userSelectedType === 'R') {
                     addr = data.roadAddress;
                  } else {
                     addr = data.jibunAddress;
                  }

                  if (data.userSelectedType === 'R') {
                     if (data.bname !== ''
                           && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                     }
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName : data.buildingName);
                     }
                     if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                     }
                     document.getElementById("sample6_extraAddress").value = extraAddr;

                  } else {
                     document.getElementById("sample6_extraAddress").value = '';
                  }

                  document.getElementById('sample6_postcode').value = data.zonecode;
                  document.getElementById("sample6_address").value = addr;
                  document.getElementById("sample6_detailAddress")
                        .focus();
               }
            }).open();
   }
   
   function update(){
$("#ubtn").attr('style','display:none');
$("#cbtn").attr('style','display:display');
$(".adbtn").attr('style','display:display');
   $("#pw").removeAttr("readOnly");
   $("#pw2").removeAttr("readOnly");
   $("#name").removeAttr("readOnly");
   $("#birth").removeAttr("readOnly");
   $("#gender").removeAttr("readOnly"); //성별 추가
   $("#email").removeAttr("readOnly");
   $("#phone2").removeAttr("readOnly");
   $("#phone3").removeAttr("readOnly");
   $("#sample6_postcode").removeAttr("readOnly");
   $("#sample6_address").removeAttr("readOnly");
   $("#sample6_detailAddress").removeAttr("readOnly");
   
   }
var formCheck=true;
   function deletecheck(){
       var deletecheck = confirm("계정 탈퇴를 하시겠습니까?");
          if(deletecheck){
             var recheck=prompt("비밀번호를 입력해주세요");
             if(recheck==${MemberDTO.getPw()}){
                location.href="delete.member";
             }
         
          else{
            alert("비밀번호가 일치하지 않습니다");
          }
          }
   }

   $(function() {
	      $('#pw2,#pw')
	            .focusout(
	                  function() {

	                     if (document.joinform.pw.value != document.joinform.pw2.value) {
	                        $("#checkPw").html('비밀번호가 동일하지 않습니다.');
	                        $("#checkPw").attr('color', 'red');
	                        formCheck2=false;
	                     } else if (document.joinform.pw.value == document.joinform.pw2.value) {
	                        $("#checkPw").html('');
	                        formCheck2=true;

	                     }
	                  });
	   });
   $(function() {
	      $('#phone2').focusout(function() {
	      
	      if (phone_pattern.test($('#phone2').val()) == false) {
	            $("#checkphone").html('전화번호의 형식이 올바르지 않습니다');
	            $("#checkphone").attr('color', 'red');
	            formCheck3=false;
	         } else if(phone_pattern.test($('#phone3').val()) == true) {
		            $("#checkphone").html('');
		            formCheck4=true;
		         } else {
	            $("#checkphone").html('');
	            formCheck3=true;
	         }
	      });
	   });

   $(function() {
	      $('#phone3').focusout(function() {
	         if (phone_pattern.test($('#phone3').val()) == false) {
	            $("#checkphone").html('전화번호의 형식이 올바르지 않습니다');
	            $("#checkphone").attr('color', 'red');
	            formCheck4=false;
	         } else if(phone_pattern.test($('#phone3').val()) == true) {
	            $("#checkphone").html('');
	            formCheck4=true;
	         }else{
	        	 $("#checkphone").html('test');
	         }
	      });
	   });
   $(function() {
	      $('#birth').focusout(function() {
	         if($('#birth').val()!=""){
	         if (birth_pattern.test($('#birth').val()) == false) {
	            $("#checkbirth").html('생년월일 형식이 올바르지 않습니다<br>예)20001122');
	            $("#checkbirth").attr('color', 'red');
	            formCheck5=false;
	         } else {
	            $("#checkbirth").html('');
	            formCheck5=true;
	         }}
	      });
	   });
	   $(function() {
		      $('#email').focusout(
		            function() {
		               if($('#email').val()!=""){
		               if (email_pattern.test($('#email').val()) == false) {
		                  $("#checkemail").html(
		                        '이메일 형식이 올바르지 않습니다<br>예)email@naver.com');
		                  $("#checkemail").attr('color', 'red');
		                  formCheck6=false;
		               } else {
		                  $("#checkemail").html('');
		                  formCheck6=true;
		               }
		               }
		            });
		   });
		   $(function() {
			      $('#email').focus(
			            function() {
			            	$("#checkemail").html('');
			                  formCheck6=true;
			            });
			   });
		   $(function() {
			      $('#birth').focus(
			            function() {
			            	$("#checkbirth").html('');
			                  formCheck5=true;
			            });
			   });
      function checkForm() {
          if ($('#pw').val() == "") {
            $("#checkPw").html('비밀번호를 입력해주세요');
            $("#checkPw").attr('color', 'red');
         } else if ($('#name').val() == "") {
            $("#checkName").html("이름은 필수 입력창입니다");
            $("#checkName").attr('color', 'red');
         } else if ($('#phone2').val() == "") {
            $("#checkPhone").html("전화번호는 필수 입력창입니다");
            $("#checkPhone").attr('color', 'red');
         } else if ($('#phone3').val() == "") {
            $("#checkPhone").html("전화번호는 필수 입력창입니다");
            $("#checkPhone").attr('color', 'red');
         } else if ($('#adderss1').val() == "") {
            $("#checkadderss").html("주소는 필수 입력창입니다");
            $("#checkadderss").attr('color', 'red');
         } else if ($('#adderss2').val() == "") {
            $("#checkadderss").html("주소는 필수 입력창입니다");
            $("#checkadderss").attr('color', 'red');
         } else if(formCheck2&&formCheck3&&formCheck4&&formCheck5&&formCheck6){
            $('.btn-block').attr('type', 'submit');
            <% String val = request.getParameter("update"); %>
            <% try{   
           if(val.equals("1")){
           %>
              alert("수정이 완료 되었습니다.");
               <%}else{
               %>
               alert("수정 프로세스에 문제가 있습니다.");   
                  
               <%}
            }catch (Exception e){
//                System.out.println("어딘가 문제가 있습니다. ");
            }%>
         }else{
            alert("형식을 다시 확인해주세요.");
         }
      }
   
</script>
</head>
<body class="addMember-body">


<c:set var="phone" value="${UserDTO.getPhone()}"/>
<c:set var="parr" value="${fn:split(phone,'-')}"/>

<c:set var="address" value="${UserDTO.getAddress()}"/>
<c:set var="aarr" value="${fn:split(address,'/')}"/>

   <div class="container addMember-div2">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            <h4 class="mb-3">My Info</h4>
            <br>
            <br>
            <form class="validation-form" action="upDate.member" method="post"
               name="joinform">

<% UserVO vo = (UserVO) request.getAttribute("uvo"); %>

               
                <div class="mb-3">
                  <label for=id">*아이디</label> <input type="text"
                     class="form-control" name="id" id="id" value="${user_id}" readonly >
               </div>

               <div class="mb-3">
                  <label for="pw">*비밀번호</label>
                  <input type="password" class="form-control" name="pw" id="pw"
                  value="${user_password}" minlength="4" maxlength="8" readonly >
               </div>

               <div class="mb-3">
                  <label for="pw2">*비밀번호 확인</label> <input type="password"
                     class="form-control" name="pw2" id="pw2" value="${user_password}" minlength="4" maxlength="8" readonly
                     >
                     <font id="checkPw" size="2">비밀번호는 4~8글자입니다</font>
               </div>
<font id="checkPw" size="2"></font> 
               <div class="mb-3">
                  <label for="name">*이름</label> <input type="text"
                     class="form-control" id="name" name="name" value="${user_name}" readonly
                      required>
               </div>

               <div class="mb-3">
                  <input type="text" id="sample6_postcode" name="address1"placeholder="우편번호" value="${aarr[0]}"required readonly>
                  <input type="button" class="adbtn" onclick="sample6_execDaumPostcode()"
                     value="우편번호 찾기" style="background-color:#23263b; display:none" ><br>
                  <br> <input type="text" id="sample6_address" placeholder="주소" name="address2" value="${aarr[1]}"required readonly >
                  <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="address3" value="${aarr[2]}" required  readonly>
                  <input type="text" id="sample6_extraAddress" placeholder="참고항목">
               </div>
               <br>
               <div class="mb-3">
                  <p>
                      연락처 <br> <select class="phone1" name="phone1">
                        <option value="010" <c:if test="${parr[0] eq '010'}">selected</c:if>>010</option>
                        <option value="011" <c:if test="${parr[0] eq '011'}">selected</c:if>>011</option>
                        <option value="016" <c:if test="${parr[0] eq '016'}">selected</c:if>>016</option>

                     </select>&nbsp- <input type="text" maxlength="4" size="4" name="phone2"
                        id="phone2" pattern="[0-9]{4}" value="${parr[1]}" readonly>&nbsp- <input type="text" maxlength="4" size="4"
                        name="phone3" id="phone3" pattern="[0-9]{4}" value="${parr[2]}" readonly> 
                  </p>
                
               </div>
               <div class="mb-3">
                  <label for="birth">생년월일</label> <input type="text"
                     class="form-control" id="birth" name="birth" value="${MemberDTO.getBirth()}" readonly
                     >
                     <font id="checkbirth"
                     size="2"></font>
               </div>
               
               <div class="mb-3">
                  <label for="gender">성별</label> <input type="text"
                     class="form-control" id="birth" name="birth" value="${MemberDTO.getGender()}" readonly>
                     <font id="checkgender" size="2"></font>
               </div>

               <div class="mb-3">
                  <label for="email">이메일</label> <input type="email"
                     class="form-control" id="email" name="email" value="${MemberDTO.getEmail()}"
                     readonly >
                     <font id="checkemail" size="2"></font>
               </div>

               <hr class="mb-4">

               <div class="mb-4"></div>
               <button class="btn btn-lg btn-block" type="button" id="ubtn" onclick="update()">정보 수정</button>
               <button class="btn btn-lg btn-block" type="button" id="cbtn" onclick="checkForm()" style="display:none">수정 완료</button>
                <button class="btn btn-lg btn-block" type="button" onclick="deletecheck()">탈퇴 하기</button>
            </form>
         </div>
      </div>

   </div>
   <br>
   <br>
  
</body>

</html>