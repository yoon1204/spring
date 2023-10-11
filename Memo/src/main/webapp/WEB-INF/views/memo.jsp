<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메모장</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

	function register() {
		
		let content = $("#content").val();
		
		$.ajax({
			type: "POST",
			dataType: "text",
			url:"/web/register",
			data: "content="+content,
			success: function(data) {
				window.location.reload();
			},
			error: function(){
				alert("error");
			}
		});
		
		
	}
	
	

	function delete1(code) {
		alert("delete");
		
		
		$.ajax({
			type:"DELETE",
			dataType:"text",
			url:"/web/delete/"+code,
			success:function(data){
				window.location.reload();
			},
			error: function(){
				alert("error");
			}
		});
		
		
	}


</script>
</head>

<body>

<h2>나의 메모장</h2>

<table border="1">
	<tr>
		<th>순번</th>
		<th colspan="3">내용</th>
	</tr>
	<c:forEach var="memo" items="${list}">
		<tr>
			<td>${memo.code}</td>
			<td>${memo.contents}</td>
			<td><button>수정</button><button onclick="delete1('${memo.code}')">삭제</button></td>
		</tr>
	</c:forEach>
	<tr>
	<td><input type="text" id="content"></td>
	<td><button onclick="register()">등록</button></td>
	</tr>
	


</table>

</body>
</html>