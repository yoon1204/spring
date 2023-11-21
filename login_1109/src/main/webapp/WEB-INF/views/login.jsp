<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<form action="/login" method="post">
    <input type="text" id="id" name="id" class="input-field" placeholder="아이디">
    <input type="password" id="pw" name="pw" class="input-field" placeholder="비밀번호">
    <button type="submit">로그인</button>
</form>
</style>
</head>
<body>

	<h3>로그인</h3>
	
	<div class="wrap">
		<div class="login">
			<input type="text" id="id" class="input-field" placeholder="아이디">
			<input type="password" id="pw" class="input-field" placeholder="비밀번호">
		</div>
		<div class="btn">
			<button id="loginButton">로그인</button>
			<span class="signup">회원가입</span>
			<span class="forgot">ID/PW 찾기</span>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function(){
			var passwordVisible = false;
			
			if (passwordVisible){
				$('#togglePassword').click(function(){
					passwordVisible = !passwordVisible;
					
					if(passwordVisible){
						$('#pw').attr('type', 'text');
					}else{
						$('#pw').attr('type', 'password');
					}
				});
				
				$(document).ready(function(){
					$('#loginButton').click(function(){
						var id = $('#id').val();
						var pw = $('#pw').val();
						
						if(id.trim() === '' || pw.trim() === ''){
							alert('아이디와 비밀번호를 입력하세요.');
							return;
						}
						
						$.ajax({
							type: 'POST',
							url: '/login/login',
							data:{
								id: id,
								pw: pw
							},
							success:function(response){
								if(response === '1'){
									window.location.href = '/login/welcome';
								}else{
									alert('아이디와 비밀번호를 확인하세요.');
								}
							}
						});
					});
				});				
	</script>
</body>
</html>