<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>

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

        .input-field {
            width: calc(100% - 20px);
            height: 40px;
            margin-top: 5px;           
            margin-bottom: 20px;
            padding: 6px;
            border: none;
            border-bottom: 2px solid gray;
            outline: none;
            font-size: 16px;      
        }

        .input-field:focus {
            border-bottom: 2px solid black;
        }

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

        .img_wrap img {
            width: 410px; 
            height: 70px;
            object-fit: cover; /* 이미지가 지정한 크기에 맞게 잘릴 수 있도록 설정 */
            border-radius: 10px;
        }

        button {
            width: 410px;
            margin-bottom: 10px;
            height: 70px;
            border: 0px;
            border-radius: 10px;
            background-color: skyblue;
        }



        .login-container {
            width: 400px;
            position: relative;
            margin-bottom: 20px;
        }

        .btn-container {
            margin-top:30px;
            width: 100%;
            display: flex;
            justify-content: space-between;   
            position: relative;      
        }

        .signup-link {
            position: absolute;
            top: 100%; 
            left: 15%; /* 왼쪽에서부터 15% 위치에 배치 */
            transform: translateX(-50%); /* 가로 방향으로 -50%만큼 이동시켜 중앙 정렬 */
        }

        .forgot-link {
            position: absolute;
            top: 100%; 
            right: 0;
            transform: translateX(-50%);
        }

    </style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
  <h3>로그인</h3>

    <!--로그인 전체 영역-->
    <div class="wrap">
        <!--로그인 정보 영역-->
        <div class="login-container">
            <input type="text" id="username" name="id" class="input-field" placeholder="아이디">
            <input type="password" id="password" name="pw" class="input-field" placeholder="비밀번호">
            <i id="togglePassword" class="eye-icon far fa-eye"></i>
        </div>

        <!--로그인 버튼 영역-->
        <div class="img_wrap">
            <button>로그인</button>
            <img src="webapp/img/카카오로그인.png" alt="카카오 로그인 이미지">  
        </div>

        <!--회원가입과 ID/PW 찾기 링크-->
        <div class="btn-container">
            <span class="signup-link">회원가입</span>
            <span class="forgot-link">ID/PW 찾기</span>
        </div>
    </div>

<script>
        document.querySelector('button').addEventListener('click', function() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    // 아이디가 비어있는지 확인
    if (username.trim() === '') {
        alert('아이디를 입력해주세요.');
        // 아이디 입력 필드로 포커스 이동
        document.getElementById('username').focus();
        return;
    }

    // 비밀번호가 비어있는지 및 최소 길이 조건을 확인
    if (password.trim() === '') {
        alert('비밀번호를 입력해주세요.');
        return;
    } else if (password.length < 6) {
        alert('비밀번호는 최소 6자 이상이어야 합니다.');
        return;
    }

    // 여기에 로그인 요청 코드를 추가
});


        var passwordField = document.getElementById('password');
        var togglePassword = document.getElementById('togglePassword');

        // 눈모양 아이콘을 클릭했을 때 비밀번호 가시성을 전환하는 함수
        togglePassword.addEventListener('click', function() {
            var type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordField.setAttribute('type', type);
            // 아이콘 스타일 변경으로 눈모양 표시 전환
            togglePassword.classList.toggle('fa-eye');
            togglePassword.classList.toggle('fa-eye-slash');
        });

        // 비밀번호 입력 필드에 대한 이벤트 리스너 추가
    var passwordField = document.getElementById('password');
    passwordField.addEventListener('keyup', function(event) {
        checkCapsLock(event);
    });

    // Caps Lock 상태를 확인하고 알림 창을 띄우는 함수
    function checkCapsLock(event) {
        var capsLockOn = event.getModifierState && event.getModifierState('CapsLock');
        if (capsLockOn) {
            alert('Caps Lock이 켜져 있습니다.');
        }
    }

    
        
</script>

</body>
</html>