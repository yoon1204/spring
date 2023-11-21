<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<div class="btn-container">
	    <ul>
	      <li onclick="kakaoLogout();">
	        <a href="javascript:void(0)">
	          <span>로그아웃</span>
	        </a>
	      </li>
	    </ul>
    </div>
<script>
 // 카카오로그아웃
    function kakaoLogout() {
        if (Kakao.Auth.getAccessToken()) {
            Kakao.API.request({
                url: "/v1/user/unlink",
                success: function (response) {
                    console.log(response);
                },
                fail: function (error) {
                    console.log(error);
                },
            });
            Kakao.Auth.setAccessToken(undefined);
        }
    }
</script>
</body>
</html>