<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="WEB-INF/header.jsp"%>
</head>
<body>
<!-- 여기부터 테마 -->
<br><br>
<div class="container-fluid mt-3">
  
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#home">숙소</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#menu1">플래너</a>
      </li>
    </ul>

    <div class="tab-content">
      <div id="home" class="container-fluid tab-pane active"><br>
        <h2>사진</h2>
        <h2>호텔 정보 : 이름 / 설명 / 가격 / 누르면 호텔 상세페이지로 이동</h2>
        <hr>
      	<br><br>
        </div>
      <div id="menu1" class="container-fluid tab-pane fade"><br>
        <h3>좋아요 누른 플래너 리뷰 / 누르면 상세정보 볼수있게</h3>
        <hr>
        <br><br><br>    
      </div>
     
      </div>
    </div>
  </div>
  <!-- 여기까지 테마 -->
  <br><br>
  

  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>