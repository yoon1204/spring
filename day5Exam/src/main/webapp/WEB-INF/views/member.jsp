<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function register(){
	let id=$("id").val();
	let pwd=$("pwd").val();
	let name=$("name").val();
	let email=$("email").val();
	let birth=$("birth").val();
	let sns=$("sns").val();
	alert(id);
	let member={id:id, pwd:pwd, name:name, email:email, birth:birth, sns:sns, reg_date:reg_date};
	let members=JSON.stringify(drama);
	console.log(members);
	console.log(member)
	
	$.ajax({
		type:"POST",
		url:"/day5Exam/Member",
		data: members,
		contentType:"application/json",
		success:function(){
			alert(data);
		},
		error:function(){
			alert("error")
		}
	});
}
</script>
</head>
<body>

<input type="text" id="id">
<input type="text" pwd="pwd">
<input type="text" name="name">
<input type="text" email="email">
<input type="text" birth="birth">
<input type="text" sns="sns">
<input type="text" reg_date="reg_date">

<button onclick=register()>등록</button>

</body>
</html>