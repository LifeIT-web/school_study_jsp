<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContextTest2 예제</title>
</head>
<body>
<!--  
	  test1에서 forward되어 주도권이 여기로 옴 
	   그래서 출력이 요기서 된겨 test1은 주도권을 잃었기에 
	   출력할 값이 있어도 안됬던 이유 (단, 주소는 변하지 않음)
-->
<%
	pageContext.include("pageContextTest3.jsp");
%>

<hr size="8" color="red">
<h2>pageContext의 forward 메소드로 포워딩된 페이지 임.</h2>

</body>
</html>