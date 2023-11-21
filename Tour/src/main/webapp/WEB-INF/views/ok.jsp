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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    Kakao.init("8409e3ef23d3aa24592484f08ad587c4");
    console.log(Kakao.isInitialized()); // sdk 초기화 여부 판단

    function kakaoLogout() {
        if (Kakao.Auth.getAccessToken()) {
            Kakao.API.request({
                url: "/v1/user/unlink",
                success: function (response) {
                    console.log(response);
                    
                    
                    window.location.href="/tour/login";
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