<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>영화목록</h1>
	 <table border="1">
        <tr>
            <th>장르</th>
            <th>제목</th>
            <th>배우</th>
        </tr>
        <c:forEach var="movie" items="${list}" >
            <tr>
                <td>${movie.genre}</td>
                <td>${movie.title}</td>
                <td>${movie.actors}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>