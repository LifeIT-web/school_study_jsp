<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page isErrorPage="true" %>
<h2> 처리 중 문제 발생 </h2>
빠른 시일 내에 복구하도록 하겠습니다. <p>

exception.getMessage() : <%=exception.getMessage() %><p>
<!-- 
	exception.getMessage()는 서블릿에 이미 Throwable exception 으로 객체를 생성한체로
	메소드를 호출한것이다.(toString()도 마찬가지)
-->
<img src="../images/return.PNG">
<br>
exception.toString() : <%=exception.toString() %>
</body>
</html>