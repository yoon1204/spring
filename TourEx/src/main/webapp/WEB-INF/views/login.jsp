<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>

		*{
			padding:0;
			margin:0;
		}

        h3 {
            font-weight: 400;
            text-align: center; 
            margin-bottom: 20px; 
        }

       .wrap {
            height: 500px;
            width: 500px;
            padding: 20px;
            border: 1px solid black;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            width: 400px;
            position: relative;
            margin-bottom: 30px;
        }

		/*아이디, 비밀번호 입력하는 밑줄 클릭 전*/
        .input-field {
            width: 371px;
            height: 40px;  
            margin-left:7px;        
            margin-top: 5px;           
            margin-bottom: 20px;
            padding: 6px;
            border: none;
            border-bottom: 2px solid gray;
            outline: none;
            font-size: 16px;      
        }

		/*아이디, 비밀번호 입력하는 밑줄 클릭 후*/
        .input-field:focus {
            border-bottom: 2px solid black;
        }

		/*비밀번호 눈모양 표시*/
        .eye-icon {
            position: absolute;
            right: 20px;
            top: 70%;
            transform: translateY(-50%);
            cursor: pointer;
        }

        .img_wrap {
            width: 400px;
            margin-bottom: 10px;
            border: 0px;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

		/*카카오 로그인*/
        .img_wrap img {
            width: 410px; 
            height: 70px;
            object-fit: cover; /* 이미지가 지정한 크기에 맞게 잘릴 수 있도록 설정 */
            border-radius: 10px;
        }

        button {
            width: 390px;
            margin-bottom: 10px;
            height: 70px;
            border: 0px;
            border-radius: 10px;
            background-color: skyblue;
            display:block;
            margin:0 auto;
        }

        .login-container {
            width: 400px;
            position: relative;
            margin-bottom: 20px;
        }
		
		/*로그인, 회원가입, ID/PW 찾기*/
        .btn-container {
            margin-top:30px;
            width: 100%;
            display: flex;
            justify-content: space-between;   
            position: relative;      
        }

		/*회원가입*/
        .signup-link {
            position: absolute;
            top: 100%; 
            margin-top:50px;
            left: 90px; /* 왼쪽에서부터 15% 위치에 배치 */
            transform: translateX(-50%); /* 가로 방향으로 -50%만큼 이동시켜 중앙 정렬 */
        }
        
		/*ID/PW 찾기*/
        .forgot-link {
            position: absolute;
            top: 100%; 
            margin-top:50px;
            right: 13px;
            transform: translateX(-50%);
        }
</style>
</head>
<body>

<h3>로그인</h3>

<div class="wrap">
    <div class="login-container">
        <input type="text" id="id" class="input-field" placeholder="아이디">
        <input type="password" name="pw" id="pw" class="input-field" placeholder="비밀번호">
        <div class="eye-icon-container">
            <i id="togglePassword" class="eye-icon far fa-eye"></i>
        </div>
    </div>
    
    <div id="caps-msg"class="caps-lock-message" style="color: red; display: none;">Caps Lock이 켜져 있습니다.</div>
    
    <div class="btn-container">
	    <ul>
	      <li onclick="kakaoLogin();">
	        <a href="javascript:void(0)">
	          <span>로그인</span>
	        </a>
	      </li>
	      <li onclick="kakaoLogout();">
	        <a href="javascript:void(0)">
	          <span>로그아웃</span>
	        </a>
	      </li>
	    </ul>
        <button id="loginButton">로그인</button>
        <span class="signup-link">회원가입</span>
        <span class="forgot-link">ID/PW 찾기</span>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    Kakao.init("8409e3ef23d3aa24592484f08ad587c4");
    console.log(Kakao.isInitialized()); // sdk 초기화 여부 판단

    // 카카오로그인
    function kakaoLogin() {
        Kakao.Auth.login({
            success: function (response) {
                Kakao.API.request({
                    url: "/v2/user/me",
                    success: function (response) {
                        console.log(response);
                    },
                    fail: function (error) {
                        console.log(error);
                    },
                });
            },
            fail: function (error) {
                console.log(error);
            },
        });
    }

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

    $(document).ready(function () {

        $('input[name=pw]').on('keyup', function (e) {
            if (e.originalEvent.getModifierState) {
                if (e.originalEvent.getModifierState('CapsLock')) {
                    $("#caps-msg").html('Caps Lock이 켜져 있습니다.').css('color', 'red').show();
                } else {
                    $("#caps-msg").hide();
                }
            }
        });

        // 비밀번호 보이기/가리기 토글 기능
        $('#togglePassword').click(function () {
            var pwField = $('#pw');
            var type = pwField.attr('type');
            if (type === 'password') {
                pwField.attr('type', 'text');
                $('#togglePassword').removeClass('far fa-eye').addClass('far fa-eye-slash');
            } else {
                pwField.attr('type', 'password');
                $('#togglePassword').removeClass('far fa-eye-slash').addClass('far fa-eye');
            }
        });

        // 로그인 버튼 클릭 시 실행될 함수
        $('#loginButton').click(function () {
            var id = $('#id').val();
            var pw = $('#pw').val();

            // 아이디 또는 비밀번호가 비어있는 경우 경고 메시지 출력
            if (id.trim() === '' || pw.trim() === '') {
                alert('아이디와 비밀번호를 입력하세요.');
                return;
            }

            // 로그인 요청을 Ajax로 전송
            $.ajax({
                type: 'POST',
                url: '/login/tour', // 로그인 처리를 수행하는 컨트롤러의 URL
                data: {
                    id: id,
                    pw: pw
                },
                success: function (response) {
                    if (response === '1') {
                        // 로그인 성공 시 원하는 페이지로 리다이렉트 또는 필요한 작업 수행
                        window.location.href = '/login/welcome'; // 성공 시 이동할 페이지
                    } else {
                        // 로그인 실패 시 에러 메시지 출력 또는 필요한 작업 수행
                        alert('아이디와 비밀번호를 확인하세요.');
                    }
                }
            });
        });
    });
</script>
</body>
</html>
