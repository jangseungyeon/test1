<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>네이버로그인</title>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

</head>
<body class = "d-flex flex-column min-vh-100">
	<script type="text/javascript">
	
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    var contextPath = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );

		var clientId = "k1TZnT_MhISa1RyzPuW8";
		var callbackUrl = "http://localhost:8090/"+contextPath+"/collback.jsp";
		var naver_id_login = new naver_id_login(clientId, callbackUrl);
		// 접근 토큰 값 출력

		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			alert('로그인성공');
			var id = naver_id_login.getProfileData('email');
			var name = naver_id_login.getProfileData('name');
// 			var mobile = naver_id_login.getProfileData('mobile');
			location.href="http://localhost:8090"+contextPath+"/naverLogin.main?id="+id+"&name="+name;
		}
	</script>
</body>


<!--   </body> -->
</html>