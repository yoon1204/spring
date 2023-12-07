<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

/* 전체 */
.left{
width:300px;
height: 800px;
border:1px solid black;
}

/* 리스트 */
.title{
height: 100px;
border:1px solid black;
}

/* 메뉴 전체 */
ul{
width:80%;
display: flex;
list-style: none;
padding:0px;
margin:0px;
border:1px solid black;
margin: 0 auto;
margin-top:50px;
}

/* 메뉴 하나 */
ul li {
margin-left:5px;
border:1px solid black;
}
</style>

</head>
<body>
<div>
<div class="left"> 왼쪽
	<div class="title">
		<div> 
		     <ul>
			     <li>주변 여행지</li> 
			     <li>음식점</li>
			     <li>카페</li>
			     <li>숙소</li>
		     </ul>
		</div>
	</div>	
	<div class="list"></div>
</div>
<div>지도</div>
</div>
</body>
</html>