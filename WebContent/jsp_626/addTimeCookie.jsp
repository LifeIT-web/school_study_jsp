<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> addCookie 와 addTimeCookie </title>
</head>
<body>
<h1>현재 시각을 쿠키로 저장</h1>

	<hr size="8" color="#44dd99">
	
	String now = new java.util.Date().toString(); <br>
	Cookie cookie = new Cookie("lastconnect", now); <br>
	cookie.setMaxAge(10);<br>
	response.addCookie(cookie);<br>

	<%
/* 	String now = new java.util.Date().toString();  */
	Cookie cookie = new Cookie("lastconnect", new java.util.Date().toString());
	cookie.setMaxAge(10);
	response.addCookie(cookie);	
	%>
	
	<hr size="8" color="#44dd99">
	
	<a href="getCookie.jsp">쿠키 조회</a>
</body>
</html>