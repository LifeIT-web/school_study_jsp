<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieTest1와 addCookie 비교</title>
</head>
<body>

	<h1>쿠키 만들기 예제</h1>
	
	<hr size="5" color="red">
	
	Cookie cookie = new Cookie("user", "kang"); <br>
	cookie.setMaxAge(2 * 60); <br>
	response.addCookie(cookie); <br>
	
	<%
	Cookie cookie = new Cookie("user", "kang"); 
	cookie.setMaxAge(2 * 60); // 초단위 : 2분
	response.addCookie(cookie); 
	%>
	
	<hr size="5" color="cyan">
	
	<a href=addTimeCookie.jsp>현재 접속 시각을 쿠키로 추가</a>
	
</body>
</html>